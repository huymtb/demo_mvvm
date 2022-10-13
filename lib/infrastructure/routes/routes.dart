import 'package:demo_mvvm/features/login/login_page.dart';
import 'package:demo_mvvm/features/splash/splash_page.dart';
import 'package:demo_mvvm/infrastructure/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashPage());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
