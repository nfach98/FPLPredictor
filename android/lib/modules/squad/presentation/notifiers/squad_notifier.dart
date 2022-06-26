import 'package:flutter/material.dart';

import '../../../loading/domain/entities/player_entity.dart';

class SquadNotifier extends ChangeNotifier {
  SquadNotifier();

  int activeTab = 0;

  List<PlayerEntity>? starting;
  List<PlayerEntity>? sub;
  List<PlayerEntity>? all;
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

    all = [];
    if (startGk != null) all?.addAll(startGk!);
    if (startDef != null) all?.addAll(startDef!);
    if (startMid != null) all?.addAll(startMid!);
    if (startFwd != null) all?.addAll(startFwd!);
    notifyListeners();
  }

  setSub(List<PlayerEntity> value) {
    sub = [];
    sub?.addAll(value.where((e) => e.position == 'GK').toList());
    sub?.addAll(value.where((e) => e.position == 'DEF').toList());
    sub?.addAll(value.where((e) => e.position == 'MID').toList());
    sub?.addAll(value.where((e) => e.position == 'FWD').toList());
    if (sub != null) all?.addAll(sub!);
    notifyListeners();
  }

  setActiveTab(int value) {
    activeTab = value;
    notifyListeners();
  }
}