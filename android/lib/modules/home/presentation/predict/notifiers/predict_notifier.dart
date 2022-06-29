import 'package:caretaker_fpl/modules/home/domain/usecases/get_players_usecase.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:flutter/cupertino.dart';

class PredictNotifier extends ChangeNotifier {
  final GetPlayersUsecase _getPlayersUsecase;

  PredictNotifier({
    required GetPlayersUsecase getPlayersUsecase
  }) : _getPlayersUsecase = getPlayersUsecase;

  int activeTab = 0;

  List<PlayerEntity>? players;
  bool isLoadingPlayers = true;
  String? errorPlayers;
  bool isKeepLoading = true;

  int page = 1;
  int? teams;
  String? position;
  String? search;

  Future<void> getPlayers({int? page, String? position}) async {
    isLoadingPlayers = true;
    notifyListeners();

    final result = await _getPlayersUsecase.execute(GetPlayersParams(
      page: page ?? this.page,
      teams: teams,
      position: position,
      search: search,
    ));

    result.fold(
      (l) => errorPlayers = l.message,
      (r) {
        if (players == null || page == 1) {
          players = r.players;
        } else {
          players!.addAll(r.players ?? []);
        }

        this.page = r.next ?? 0;
        isKeepLoading = (r.players?.length ?? 0) >= 12;
      }
    );

    isLoadingPlayers = false;
    notifyListeners();
  }

  setSearch(String? value) {
    search = value;
    notifyListeners();
  }

  setActiveTab(int value) {
    activeTab = value;
    notifyListeners();
  }
}