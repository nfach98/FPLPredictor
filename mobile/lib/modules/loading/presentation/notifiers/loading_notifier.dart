import 'dart:developer';

import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/usecases/get_prediction_usecase.dart';
import 'package:caretaker_fpl/modules/loading/domain/usecases/get_recommendation_usecase.dart';
import 'package:flutter/material.dart';

class LoadingNotifier extends ChangeNotifier {
  final GetRecommendationUsecase _getRecommendationUsecase;
  final GetPredictionUsecase _getPredictionUsecase;

  LoadingNotifier({
    required GetRecommendationUsecase getRecommendationUsecase,
    required GetPredictionUsecase getPredictionUsecase,
  }) : _getRecommendationUsecase = getRecommendationUsecase,
        _getPredictionUsecase = getPredictionUsecase;

  List<PlayerEntity>? starting;
  List<PlayerEntity>? sub;
  double? totalPredicted;
  bool isLoading = true;
  String? error;

  List<TriviaEntity>? trivias;

  setTrivias(List<TriviaEntity> value) {
    trivias = value;
    notifyListeners();
  }

  Future<void> getRecommendation({List<int>? teams}) async {
    isLoading = true;
    notifyListeners();

    final result = await _getRecommendationUsecase.execute(teams: teams);

    result.fold(
      (l) => error = l.message,
      (r) {
        starting = r.starting;
        sub = r.sub;
        totalPredicted = r.totalPredicted;
        log(starting.toString(), name: 'starting');
      }
    );

    isLoading = false;
    notifyListeners();
  }

  Future<void> getPrediction({required List<int> players}) async {
    isLoading = true;
    notifyListeners();

    final result = await _getPredictionUsecase.execute(players: players);

    result.fold(
      (l) => error = l.message,
      (r) {
        starting = r.starting;
        sub = r.sub;
        totalPredicted = r.totalPredicted;
      }
    );

    isLoading = false;
    notifyListeners();
  }
}