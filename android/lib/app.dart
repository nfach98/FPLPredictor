import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/constants/route_constants.dart';
import 'package:caretaker_fpl/modules/splash/presentation/splash_screen_page.dart';
import 'package:caretaker_fpl/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: ScreenUtilInit(
        designSize: const Size(360, 720),
        minTextAdapt: true,
        builder: (_) => MaterialApp(
          title: 'caretaker FPL',
          theme: FplTheme.theme,
          initialRoute: RouteConstants.splashscreen,
          onGenerateRoute: AppRouter().onGenerateRoute,
        ),
      ),
    );
  }
}
