import 'package:assure/pages/login/login_page.dart';
import 'package:assure/pages/main/main_page.dart';
import 'package:assure/pages/new_test/new_test_page.dart';
import 'package:assure/pages/result/result_page.dart';
import 'package:assure/pages/setting/setting_page.dart';
import 'package:assure/pages/test/test_page.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case NameRoutes.main:
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
        );
      case NameRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case NameRoutes.setting:
        return MaterialPageRoute(
          builder: (_) => const SettingPage(),
        );
      case NameRoutes.newTest:
        return MaterialPageRoute(
          builder: (_) => const NewTestPage(),
        );
      case NameRoutes.result:
        return MaterialPageRoute(
          builder: (_) => const ResultPage(),
        );
      case NameRoutes.test:
        return MaterialPageRoute(
          builder: (_) => const TestPage(),
        );
      default:
        debugPrint('Page "${routeSettings.name}" not found');
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
        );
    }
  }
}
