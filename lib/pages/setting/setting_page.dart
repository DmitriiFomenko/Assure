// ignore_for_file: use_build_context_synchronously

import 'package:assure/generated/l10n.dart';
import 'package:assure/main.dart';
import 'package:assure/models/account.dart';
import 'package:assure/models/app_state.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:assure/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final controllerOldPassword = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerPasswordAgain = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool hidePassword = true;
  bool hidePasswordAgain = true;
  bool hidePasswordOld = true;

  String? errorMessageOldPassword;
  String? errorMessage;

  late String login;

  String? _validateOldPassword(String? text) => errorMessageOldPassword;
  String? _validatePassword(String? text) => errorMessage;

  Future<void> changePassword(BuildContext context) async {
    if (!getIt.isRegistered<Account>()) return;
    if (controllerPassword.text != controllerPasswordAgain.text) {
      errorMessage = S.of(context).passwords_dont_match;
      _formKey.currentState?.validate();
      return;
    }

    final account = getIt.get<Account>();
    final accountProto = AccountProto(
        login: account.login, password: controllerOldPassword.text);
    final response = await server.changePassword(
      ChangePasswordRequest(
        account: accountProto,
        newPassowrd: controllerPassword.text,
      ),
    );
    if (!response.checkOldPassword) {
      errorMessageOldPassword = S.of(context).incorrect_password;
      _formKey.currentState?.validate();
      showSnackBar(context, text: S.of(context).incorrect_password);
      return;
    }
    if (response.result) {
      getIt.unregister<Account>();
      getIt.registerSingleton<Account>(
        Account(login: account.login, password: controllerPassword.text),
      );

      showSnackBar(context, text: S.of(context).password_is_changed);
    } else {
      showSnackBar(context, text: S.of(context).error);
    }
  }

  InputDecoration textFieldDecoration({
    required int index,
    required String labelText,
    bool hide = false,
  }) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            switch (index) {
              case 0:
                hidePasswordOld = !hidePasswordOld;
                break;
              case 1:
                hidePassword = !hidePassword;
                break;
              case 2:
                hidePasswordAgain = !hidePasswordAgain;
                break;
            }
          });
        },
        icon: Icon(
          hide ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }

  @override
  void initState() {
    if (getIt.isRegistered<Account>()) {
      login = getIt.get<Account>().login;
    } else {
      login = '';
    }
    super.initState();
  }

  @override
  void dispose() {
    controllerOldPassword.dispose();
    controllerPassword.dispose();
    controllerPasswordAgain.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).setting),
          leading: IconButton(
            onPressed: () async {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(NameRoutes.main, (route) => false);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).username(login),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              errorMessageOldPassword = null;
                              _formKey.currentState?.validate();
                            },
                            decoration: textFieldDecoration(
                              index: 0,
                              labelText: S.of(context).old_password,
                              hide: hidePasswordOld,
                            ),
                            obscureText: hidePasswordOld,
                            controller: controllerOldPassword,
                            maxLength: 32,
                            validator: _validateOldPassword,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              errorMessage = null;
                              _formKey.currentState?.validate();
                            },
                            decoration: textFieldDecoration(
                              index: 1,
                              labelText: S.of(context).new_password,
                              hide: hidePassword,
                            ),
                            obscureText: hidePassword,
                            controller: controllerPassword,
                            maxLength: 32,
                            validator: _validatePassword,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              errorMessage = null;
                              _formKey.currentState?.validate();
                            },
                            decoration: textFieldDecoration(
                              index: 2,
                              labelText: S.of(context).repeat_password,
                              hide: hidePasswordAgain,
                            ),
                            obscureText: hidePassword,
                            controller: controllerPasswordAgain,
                            maxLength: 32,
                            validator: _validatePassword,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () async {
                        makeRequest(context, () async {
                          await changePassword(context);
                        });
                      },
                      child: Text(
                        S.of(context).change_password,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Divider(thickness: 2),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).theme,
                        ),
                        ToggleButtons(
                          onPressed: (index) {
                            final ThemeMode theme;
                            switch (index) {
                              case 0:
                                theme = ThemeMode.light;
                                break;
                              case 1:
                                theme = ThemeMode.system;
                                break;
                              case 2:
                                theme = ThemeMode.dark;
                                break;
                              default:
                                theme = ThemeMode.system;
                            }
                            setState(() {
                              notifierAppState.value = AppState(
                                  theme: theme,
                                  getCurrentLocale:
                                      notifierAppState.value.getCurrentLocale);
                            });
                          },
                          isSelected: [
                            notifierAppState.value.theme == ThemeMode.light,
                            notifierAppState.value.theme == ThemeMode.system,
                            notifierAppState.value.theme == ThemeMode.dark
                          ],
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(S.of(context).light),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(S.of(context).system),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(S.of(context).dark),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).language,
                        ),
                        ToggleButtons(
                          onPressed: (index) {
                            setState(() {
                              if (Intl.getCurrentLocale() == 'ru') {
                                notifierAppState.value = AppState(
                                    theme: notifierAppState.value.theme,
                                    getCurrentLocale: 'en');
                                S.load(const Locale('en'));
                              } else {
                                notifierAppState.value = AppState(
                                    theme: notifierAppState.value.theme,
                                    getCurrentLocale: 'ru');
                                S.load(const Locale('ru'));
                              }
                            });
                          },
                          isSelected: [
                            Intl.getCurrentLocale() == 'ru',
                            Intl.getCurrentLocale() == 'en'
                          ],
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(S.of(context).russian),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(S.of(context).english),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
