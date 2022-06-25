import 'package:caretaker_fpl/modules/home/presentation/notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../injection_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeNotifier _homeNotifier;

  @override
  void initState() {
    super.initState();
    _homeNotifier = sl<HomeNotifier>();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _homeNotifier.getTeams();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _homeNotifier,
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
