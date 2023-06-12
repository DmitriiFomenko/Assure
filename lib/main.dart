import 'package:assure/generated/l10n.dart';
import 'package:assure/models/app_state.dart';
import 'package:assure/protos/generated/server.pbgrpc.dart';
import 'package:assure/utils/port.dart';
import 'package:assure/utils/routes/app_router.dart';
import 'package:assure/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

late GreeterClient server;
late ClientChannel _channel;

Future<void> shutdown() async {
  await _channel.shutdown();
}

void prepareServer() {
  _channel = ClientChannel(
    'assure2.ru', //5.166.236.53
    port: port,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ]),
    ),
  );
  server = GreeterClient(
    _channel,
    options: CallOptions(
      timeout: const Duration(seconds: 5),
    ),
  );
}

final getIt = GetIt.instance;

void setup() async {}

Future<void> main() async {
  prepareServer();
  runApp(App());
  await FlutterDisplayMode.setHighRefreshRate();
}

final ValueNotifier<AppState> notifierAppState = ValueNotifier(
    const AppState(theme: ThemeMode.system, getCurrentLocale: 'ru'));

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notifierAppState,
      builder: (_, mode, __) {
        return MaterialApp(
          onGenerateRoute: _appRouter.onGenerateRoute,
          themeMode: mode.theme,
          theme: lightTheme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
