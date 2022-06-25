import 'dart:collection';

import 'package:caretaker_fpl/modules/home/data/models/team_model.dart';

class GetInformationsResponseModel {
  GetInformationsResponseModel({this.facts, this.records});

  List<TeamModel>? facts;
  List<TeamModel>? records;

  factory GetInformationsResponseModel.fromJson(Map<String, dynamic> json) =>
      GetInformationsResponseModel(
        facts:
            (json['facts'] as List).map((v) => TeamModel.fromJson(v)).toList(),
        records: (json['records'] as List)
            .map((v) => TeamModel.fromJson(v))
            .toList(),
      );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['facts'] = facts?.map((v) => v.toMap).toList();
    map['records'] = records?.map((v) => v.toMap).toList();
    return map;
  }
}
