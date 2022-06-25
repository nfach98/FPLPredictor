import 'dart:collection';

class TeamModel {
  TeamModel({
    this.id,
    this.teamName,
    this.logo,
  });

  int? id;
  String? teamName;
  String? logo;

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
    id: json['team'],
    teamName: json['team_name'],
    logo: json['logo'],
  );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['team'] = id;
    map['team_name'] = teamName;
    map['logo'] = logo;
    return map;
  }
}
