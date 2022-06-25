import 'package:flutter/material.dart';

class RecommendNotifier extends ChangeNotifier {
  RecommendNotifier();

  List<int> selectedTeams = [];

  addTeam(int value) {
    selectedTeams.add(value);
    notifyListeners();
  }

  removeTeam(int value) {
    selectedTeams.remove(value);
    notifyListeners();
  }
}