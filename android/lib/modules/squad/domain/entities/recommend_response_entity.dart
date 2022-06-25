import 'dart:collection';

import 'package:caretaker_fpl/modules/squad/data/models/player_model.dart';
import 'package:equatable/equatable.dart';

class RecommendResponseEntity extends Equatable {
  const RecommendResponseEntity({
    this.starting, this.sub, this.totalPredicted,
  });

  final List<PlayerModel>? starting;
  final List<PlayerModel>? sub;
  final double? totalPredicted;

  @override
  List<Object?> get props => [
    starting,
    sub,
    totalPredicted,
  ];
}