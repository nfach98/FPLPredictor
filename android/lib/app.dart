import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/common/constants/route_constants.dart';
import 'package:caretaker_fpl/modules/home/presentation/home/notifiers/home_notifier.dart';
import 'package:caretaker_fpl/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'injection_container.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeNotifier>(
          create: (_) => sl<HomeNotifier>(),
        ),
      ],
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
