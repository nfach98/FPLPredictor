import 'dart:collection';

import 'package:caretaker_fpl/modules/loading/data/models/player_model.dart';
import 'package:equatable/equatable.dart';

class GetPlayersResponseModel extends Equatable {
  const GetPlayersResponseModel({
    this.players, this.prev, this.next, this.page, this.total,
  });

  final List<PlayerModel>? players;
  final int? prev;
  final int? next;
  final int? page;
  final int? total;

  factory GetPlayersResponseModel.fromJson(Map<String, dynamic> json) =>
      GetPlayersResponseModel(
        players: (json['players'] as List).map((v) => PlayerModel.fromJson(v)).toList(),
        prev: json['prev'],
        next: json['next'],
        page: json['page'],
        total: json['total'],
      );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['players'] = players?.map((v) => v.toMap).toList();
    map['prev'] = prev;
    map['next'] = next;
    map['page'] = page;
    map['total'] = total;
    return map;
  }

  @override
  List<Object?> get props => [
    players,
    prev,
    next,
    page,
    total,
  ];
}