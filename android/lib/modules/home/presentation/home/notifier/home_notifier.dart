import 'package:caretaker_fpl/modules/home/domain/entities/information_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_informations_usecase.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_teams_usecase.dart';
import 'package:flutter/cupertino.dart';

class HomeNotifier with ChangeNotifier {
  final GetTeamsUsecase _getTeamsUsecase;
  final GetInformationsUsecase _getInformationsUsecase;

  HomeNotifier({
    required GetTeamsUsecase getTeamsUsecase,
    required GetInformationsUsecase getInformationsUsecase,
  }) : _getTeamsUsecase = getTeamsUsecase,
        _getInformationsUsecase = getInformationsUsecase;

  int activeTab = 0;

  List<TeamEntity>? teams;
  bool isLoadingTeams = true;
  String? errorTeams;

  List<InformationEntity>? facts;
  List<InformationEntity>? records;
  bool isLoadingInformations = true;
  String? errorInformations;

  Future<void> getTeams() async {
    isLoadingTeams = true;
    notifyListeners();

    final result = await _getTeamsUsecase.execute();

    result.fold(
      (l) => errorTeams = l.message,
      (r) => teams = r.teams
    );

    isLoadingTeams = false;
    notifyListeners();
  }

  Future<void> getInformations() async {
    isLoadingInformations = true;
    notifyListeners();

    final result = await _getInformationsUsecase.execute();

    result.fold(
      (l) => errorInformations = l.message,
      (r) {
        facts = r.facts;
        records = r.records;
      }
    );

    isLoadingInformations = false;
    notifyListeners();
  }

  setActiveTab(int value){
    activeTab = value;
    notifyListeners();
  }
}