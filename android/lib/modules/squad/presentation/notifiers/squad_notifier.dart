import 'package:flutter/material.dart';

import '../../../loading/domain/entities/player_entity.dart';

class SquadNotifier extends ChangeNotifier {
  SquadNotifier();

  List<PlayerEntity>? starting;
  List<PlayerEntity>? sub;
  double? totalPredicted;

  List<PlayerEntity>? startGk;
  List<PlayerEntity>? startDef;
  List<PlayerEntity>? startMid;
  List<PlayerEntity>? startFwd;

  setStarting(List<PlayerEntity> value) {
    starting = [];
    starting?.addAll(value);

    startGk = value.where((element) => element.position == 'GK').toList();
    startDef = value.where((element) => element.position == 'DEF').toList();
    startMid = value.where((element) => element.position == 'MID').toList();
    startFwd = value.where((element) => element.position == 'FWD').toList();
    notifyListeners();
  }

  setSub(List<PlayerEntity> value) {
    sub = value;
    notifyListeners();
  }
}