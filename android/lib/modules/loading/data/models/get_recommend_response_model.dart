import 'dart:collection';

import 'package:caretaker_fpl/modules/squad/data/models/player_model.dart';
import 'package:equatable/equatable.dart';

class GetRecommendResponseModel extends Equatable {
  const GetRecommendResponseModel({
    this.starting, this.sub, this.totalPredicted,
  });

  final List<PlayerModel>? starting;
  final List<PlayerModel>? sub;
  final double? totalPredicted;

  factory GetRecommendResponseModel.fromJson(Map<String, dynamic> json) =>
      GetRecommendResponseModel(
        starting: (json['starting'] as List).map((v) => PlayerModel.fromJson(v)).toList(),
        sub: (json['sub'] as List).map((v) => PlayerModel.fromJson(v)).toList(),
        totalPredicted: json['total_predicted'],
      );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['starting'] = starting?.map((v) => v.toMap).toList();
    map['sub'] = sub?.map((v) => v.toMap).toList();
    map['total_predicted'] = totalPredicted;
    return map;
  }

  @override
  List<Object?> get props => [
    starting,
    sub,
    totalPredicted,
  ];
}