import 'dart:developer';

import 'package:caretaker_fpl/common/config/themes.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:caretaker_fpl/modules/home/presentation/predict/predict_page.dart';
import 'package:caretaker_fpl/modules/home/presentation/recommend/recommend_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../injection_container.dart';
import '../home/notifiers/home_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      context.read<HomeNotifier>().getTeams();
      // context.read<HomeNotifier>().getInformations();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<TeamEntity>? teams = context.select((HomeNotifier n) => n).teams;
    List<TriviaEntity>? trivias = context.select((HomeNotifier n) => n).trivias;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'caretaker',
          style: Theme.of(context).textTheme.headline1?.copyWith(
            color: FplTheme.colors.white
          ),
        ),
        flexibleSpace: Image.asset(
          'assets/images/bg_heading.png',
          color: Theme.of(context).primaryColor,
          fit: BoxFit.cover,
        ),
        backgroundColor: FplTheme.colors.dark,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Recommend'),
            Tab(text: 'Predict'),
          ],
          labelColor: FplTheme.colors.white,
          labelStyle: Theme.of(context).textTheme.headline3?.copyWith(
            fontSize: 14.sp,
          ),
          unselectedLabelStyle: Theme.of(context).textTheme.headline3?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
          indicatorWeight: 4.r,
          indicatorColor: Theme.of(context).primaryColor,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          RecommendPage(),
          PredictPage(),
        ],
      ),
    );
  }
}
