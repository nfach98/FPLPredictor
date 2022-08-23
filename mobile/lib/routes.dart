import 'package:caretaker_fpl/modules/home/presentation/predict/arguments/player_select_page_arguments.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/player_select_page.dart';
import 'package:caretaker_fpl/modules/loading/presentation/loading_page.dart';
import 'package:caretaker_fpl/modules/splash/presentation/splash_screen_page.dart';
import 'package:caretaker_fpl/modules/squad/presentation/arguments/loading_page_arguments.dart';
import 'package:caretaker_fpl/modules/squad/presentation/squad_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'common/constants/route_constants.dart';
import 'modules/home/presentation/home/home_page.dart';
import 'modules/loading/presentation/arguments/loading_page_arguments.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.splashscreen:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case RouteConstants.home:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.center,
          child: const HomePage(),
        );
      case RouteConstants.playerSelect:
        return PageTransition(
          type: PageTransitionType.bottomToTop,
          child: PlayerSelectPage(
            argument: routeSettings.arguments as PlayerSelectPageArguments
          ),
        );
      case RouteConstants.loading:
        return MaterialPageRoute(builder: (_) => LoadingPage(
          argument: routeSettings.arguments as LoadingPageArguments
        ));
      case RouteConstants.squad:
        return MaterialPageRoute(builder: (_) => SquadPage(
          argument: routeSettings.arguments as SquadPageArguments
        ));
      default:
        return null;
    }
  }
}
