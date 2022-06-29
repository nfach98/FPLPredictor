import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_trivias_usecase.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_teams_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../../loading/domain/entities/player_entity.dart';
import '../../../domain/usecases/get_players_usecase.dart';

class HomeNotifier with ChangeNotifier {
  final GetTeamsUsecase _getTeamsUsecase;
  final GetTriviasUsecase _getTriviasUsecase;
  final GetPlayersUsecase _getPlayersUsecase;

  HomeNotifier({
    required GetTeamsUsecase getTeamsUsecase,
    required GetTriviasUsecase getTriviasUsecase,
    required GetPlayersUsecase getPlayersUsecase,
  }) : _getTeamsUsecase = getTeamsUsecase,
        _getTriviasUsecase = getTriviasUsecase,
        _getPlayersUsecase = getPlayersUsecase;

  int activeTab = 0;

  List<TeamEntity>? teams;
  bool isLoadingTeams = true;
  String? errorTeams;

  List<TriviaEntity>? trivias;
  bool isLoadingInformations = true;
  String? errorInformations;

  List<int> selectedTeams = [0];

  List<PlayerEntity>? searches;
  bool isLoadingPlayers = true;
  String? errorPlayers;
  bool isKeepLoadingPlayers = true;

  int page = 1;
  int? searchTeams;
  String? searchPosition;
  String? search;

  List<PlayerEntity?> selectedPlayers = List.generate(15, (i) => null);
  double money = 100.0;

  Future<void> getTeams() async {
    isLoadingTeams = true;
    notifyListeners();

    final result = await _getTeamsUsecase.execute();

    result.fold(
      (l) => errorTeams = l.message,
      (r) {
        teams = r.teams;
        teams?.insert(0, const TeamEntity(
          id: 0,
          teamName: 'Any team',
        ));
      }
    );

    isLoadingTeams = false;
    notifyListeners();
  }

  Future<void> getInformations() async {
    isLoadingInformations = true;
    notifyListeners();

    final result = await _getTriviasUsecase.execute();

    result.fold(
      (l) => errorInformations = l.message,
      (r) {
        trivias = [];
        if (r.facts != null) trivias?.addAll(r.facts!);
        if (r.records != null) trivias?.addAll(r.records!);
      }
    );

    isLoadingInformations = false;
    notifyListeners();
  }

  Future<void> getPlayers({int? page, String? position}) async {
    if (searchPosition != position) {
      this.page = 1;
    }

    isLoadingPlayers = true;
    searchPosition = position;
    notifyListeners();

    final result = await _getPlayersUsecase.execute(GetPlayersParams(
      page: page ?? this.page,
      teams: searchTeams,
      position: position,
      search: search,
    ));

    result.fold(
      (l) => errorPlayers = l.message,
      (r) {
        if (searches == null || this.page == 1 || page == 1) {
          List<PlayerEntity> list = [...(r.players ?? [])];
          searches = list;
        } else {
          List<PlayerEntity> list = [...(searches ?? []),...(r.players ?? [])];
          searches = list;
        }

        this.page = r.next ?? 0;
        isKeepLoadingPlayers = (r.players?.length ?? 0) >= 12;
      }
    );

    isLoadingPlayers = false;
    notifyListeners();
  }

  setActiveTab(int value){
    activeTab = value;
    notifyListeners();
  }

  addTeam(int value) {
    List<int> list = [...selectedTeams];
    list.add(value);
    selectedTeams = list;
    notifyListeners();
  }

  removeTeam(int value) {
    List<int> list = [...selectedTeams];
    list.remove(value);
    selectedTeams = list;
    notifyListeners();
  }

  clearTeam() {
    List<int> list = [...selectedTeams];
    list.clear();
    selectedTeams = list;
    notifyListeners();
  }

  addSelected(int at, PlayerEntity player) {
    selectedPlayers[at] = player;
    money = money - (player.cost ?? 0);
    notifyListeners();
  }

  removeSelected(int at, PlayerEntity player) {
    selectedPlayers[at] = null;
    money = money + (player.cost ?? 0);
    notifyListeners();
  }

  clearSelected() {
    selectedPlayers = List.generate(15, (i) => null);
    money = 100.0;
    notifyListeners();
  }

  Future<void> setSearch(String? value) async {
    search = value;
    notifyListeners();
  }
}