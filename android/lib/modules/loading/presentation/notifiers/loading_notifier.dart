import 'dart:developer';

import 'package:caretaker_fpl/modules/home/domain/entities/information_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/usecases/get_recommendation_usecase.dart';
import 'package:flutter/material.dart';

class LoadingNotifier extends ChangeNotifier {
  final GetRecommendUsecase _getRecommendUsecase;

  LoadingNotifier({
    required GetRecommendUsecase getRecommendUsecase,
  }) : _getRecommendUsecase = getRecommendUsecase;

  List<PlayerEntity>? starting;
  List<PlayerEntity>? sub;
  double? totalPredicted;
  bool isLoadingRecommend = true;
  String? errorRecommend;

  List<InformationEntity>? trivias;

  setTrivias(List<InformationEntity> value) {
    trivias = value;
    notifyListeners();
  }

  Future<void> getRecommend({List<int>? teams}) async {
    isLoadingRecommend = true;
    notifyListeners();

    final result = await _getRecommendUsecase.execute(teams: teams);

    result.fold(
      (l) => errorRecommend = l.message,
      (r) {
        starting = r.starting;
        sub = r.sub;
        totalPredicted = r.totalPredicted;
        log(starting.toString(), name: 'starting');
      }
    );

    isLoadingRecommend = false;
    notifyListeners();
  }
}