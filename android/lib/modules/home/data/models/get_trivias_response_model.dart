import 'dart:collection';

import 'package:caretaker_fpl/modules/home/data/models/trivia_model.dart';

class GetTriviasResponseModel {
  GetTriviasResponseModel({this.facts, this.records});

  List<TriviaModel>? facts;
  List<TriviaModel>? records;

  factory GetTriviasResponseModel.fromJson(Map<String, dynamic> json) =>
      GetTriviasResponseModel(
        facts: (json['facts'] as List)
            .map((v) => TriviaModel.fromJson(v))
            .toList(),
        records: (json['records'] as List)
            .map((v) => TriviaModel.fromJson(v))
            .toList(),
      );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['facts'] = facts?.map((v) => v.toMap).toList();
    map['records'] = records?.map((v) => v.toMap).toList();
    return map;
  }
}
