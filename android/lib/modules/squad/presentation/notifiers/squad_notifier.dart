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
  int captain = 0;

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

    totalPredicted = 0;
    if (all != null) {
      List<PlayerEntity> dat = [...all!];
      dat.sort((a, b) => b.ptsPredicted?.compareTo(a.ptsPredicted ?? 0) ?? 0);
      var highest = dat[0].ptsPredicted ?? 0 * 2;
      captain = dat[0].code ?? 0;

      totalPredicted = 0;
      dat.sublist(1, 12).forEach((e) {
        totalPredicted = dat.indexOf(e) == 0
          ? (totalPredicted ?? 0) + (e.ptsPredicted ?? 0) * 2
          : (totalPredicted ?? 0) + (e.ptsPredicted ?? 0);
      });
      totalPredicted = (totalPredicted ?? 0) + highest;
    }

    notifyListeners();
  }

  setActiveTab(int value) {
    activeTab = value;
    notifyListeners();
  }
}