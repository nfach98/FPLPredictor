import 'dart:convert';
import 'dart:developer';

import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_teams_usecase.dart';
import 'package:flutter/cupertino.dart';

class HomeNotifier with ChangeNotifier {
  final GetTeamsUsecase _getTeamsUsecase;

  HomeNotifier({
    required GetTeamsUsecase getTeamsUsecase,
  })  : _getTeamsUsecase = getTeamsUsecase;

  List<TeamEntity>? teams;
  bool isLoadingTeams = true;
  String? error;

  Future<void> getTeams() async {
    isLoadingTeams = true;
    notifyListeners();

    final result = await _getTeamsUsecase.execute();

    result.fold(
      (l) {
        error = l.message;
      },
      (r) {
        teams = r.teams;
      }
    );

    isLoadingTeams = false;
    notifyListeners();
  }
}