import 'package:caretaker_fpl/modules/home/presentation/home_page.dart';
import 'package:caretaker_fpl/modules/splash/presentation/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'common/constants/route_constants.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.splashscreen:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case RouteConstants.home:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => const HomePage(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
      default:
        return null;
    }
  }
}
