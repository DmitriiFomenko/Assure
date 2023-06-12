// ignore_for_file: use_build_context_synchronously

import 'package:assure/generated/l10n.dart';
import 'package:assure/main.dart';
import 'package:assure/models/account.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:assure/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool hidePassword = true;
  String? errorMessage;

  Future<void> signIn() async {
    controllerLogin.text = controllerLogin.text.trim();

    final account = AccountProto(
        login: controllerLogin.text, password: controllerPassword.text);
    final response = await server.signIn(AuthRequest(account: account));
    if (response.result) {
      getIt.registerSingleton<Account>(
        Account(login: controllerLogin.text, password: controllerPassword.text),
      );

      showSnackBar(context, text: S.of(context).successfully_logged);
      Navigator.of(context)
          .pushNamedAndRemoveUntil(NameRoutes.main, (route) => false);
    } else {
      errorMessage = S.of(context).incorrect_login_or_password;
      _formKey.currentState?.validate();
    }
  }

  Future<void> signUp() async {
    controllerLogin.text = controllerLogin.text.trim();

    final account = AccountProto(
        login: controllerLogin.text, password: controllerPassword.text);
    final response = await server.signUp(AuthRequest(account: account));
    if (response.result) {
      getIt.registerSingleton<Account>(
        Account(login: controllerLogin.text, password: controllerPassword.text),
      );

      showSnackBar(context, text: S.of(context).successfully_registered);
      Navigator.of(context)
          .pushNamedAndRemoveUntil(NameRoutes.main, (route) => false);
    } else {
      errorMessage = S.of(context).login_already_use;
      _formKey.currentState?.validate();
    }
  }

  String? _validateLogin(String? text) => errorMessage;

  InputDecoration textFieldDecoration({
    required String labelText,
    bool isPassword = false,
  }) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      suffixIcon: isPassword
          ? IconButton(
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              icon: Icon(
                hidePassword ? Icons.visibility_off : Icons.visibility,
              ),
            )
          : null,
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
      getIt.unregister<Account>();
    }
    super.initState();
  }

  @override
  void dispose() {
    controllerLogin.dispose();
    controllerPassword.dispose();
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
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      S.of(context).assure,
                      style: const TextStyle(fontSize: 32),
                    ),
                    const SizedBox(height: 48),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              errorMessage = null;
                              _formKey.currentState?.validate();
                            },
                            decoration: textFieldDecoration(
                              labelText: S.of(context).login,
                            ),
                            controller: controllerLogin,
                            maxLength: 32,
                            validator: _validateLogin,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(
                                  RegExp(r'[/\\]')),
                            ],
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            decoration: textFieldDecoration(
                              labelText: S.of(context).password,
                              isPassword: true,
                            ),
                            obscureText: hidePassword,
                            controller: controllerPassword,
                            maxLength: 32,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () async {
                        makeRequest(context, () async {
                          await signIn();
                        });
                      },
                      child: Text(
                        S.of(context).sign_in,
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        makeRequest(context, () async {
                          await signUp();
                        });
                      },
                      child: Text(
                        S.of(context).sign_up,
                      ),
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
