import 'dart:collection';

import 'package:caretaker_fpl/modules/home/data/models/team_model.dart';

class GetTeamsResponseModel {
  GetTeamsResponseModel({this.teams,});

  List<TeamModel>? teams;
  String? teamName;
  String? logo;

  factory GetTeamsResponseModel.fromJson(Map<String, dynamic> json) => GetTeamsResponseModel(
    teams: (json['teams'] as List).map((v) => TeamModel.fromJson(v)).toList(),
  );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['teams'] = teams?.map((v) => v.toMap).toList();
    return map;
  }
}
