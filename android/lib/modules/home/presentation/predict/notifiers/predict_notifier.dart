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

  int page = 1;
  int? teams;
  String? position;
  String? search;
  double money = 100.0;

  List<PlayerEntity?> selected = List.generate(15, (i) => null);

  Future<void> getPlayers() async {
    isLoadingPlayers = true;
    notifyListeners();

    final result = await _getPlayersUsecase.execute(GetPlayersParams(
      page: page,
      teams: teams,
      position: position,
      search: search,
    ));

    result.fold(
      (l) => errorPlayers = l.message,
      (r) {
        if (players == null) {
          players = r.players;
        } else {
          players!.addAll(r.players ?? []);
        }

        page = r.next ?? 0;
      }
    );

    isLoadingPlayers = false;
    notifyListeners();
  }
  
  addSelected(int at, PlayerEntity player) {
    selected[at] = player;
    money = money - (player.cost ?? 0);
    notifyListeners();
  }

  removeSelected(int at, PlayerEntity player) {
    selected[at] = null;
    money = money + (player.cost ?? 0);
    notifyListeners();
  }

  clearSelected() {
    selected = List.generate(15, (i) => null);
    money = 100.0;
    notifyListeners();
  }

  setActiveTab(int value) {
    activeTab = value;
    notifyListeners();
  }
}