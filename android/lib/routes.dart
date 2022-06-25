import 'package:caretaker_fpl/modules/splash/presentation/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'common/constants/route_constants.dart';
import 'modules/home/presentation/home/home_page.dart';

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
