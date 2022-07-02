import 'dart:collection';

class PlayerModel {
  PlayerModel({
    this.id, this.name, this.webName, this.position, this.team,
    this.teamId, this.shirt, this.code, this.cost, this.ptsActual, this.ptsPredicted,
    this.listActual, this.listPredicted
});

  final int? id;
  final String? name;
  final String? webName;
  final String? position;
  final String? team;
  final String? teamId;
  final String? shirt;
  final int? code;
  final double? cost;
  final double? ptsActual;
  final double? ptsPredicted;
  final List<double>? listActual;
  final List<double>? listPredicted;

  factory PlayerModel.fromJson(Map<String, dynamic> json) => PlayerModel(
    id: json['id_player'],
    name: json['name'],
    webName: json['web_name'],
    position: json['position'],
    team: json['team'],
    teamId: json['team_id'],
    shirt: json['shirt'],
    code: json['code'],
    cost: json['now_cost'],
    ptsActual: json['actual'],
    ptsPredicted: json['predicted'],
    listActual: json['actual_list'] != null
      ? (json['actual_list'] as List).map((v) => double.parse(v.toString())).toList()
      : null,
    listPredicted: json['predicted_list'] != null
      ? (json['predicted_list'] as List).map((v) => double.parse(v.toString())).toList()
      : null,
  );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['id_player'] = id;
    map['name'] = name;
    map['web_name'] = webName;
    map['position'] = position;
    map['team'] = team;
    map['team_id'] = teamId;
    map['shirt'] = shirt;
    map['code'] = code;
    map['now_cost'] = cost;
    map['actual'] = ptsActual;
    map['predicted'] = ptsPredicted;
    map['actual_list'] = listActual?.map((v) => v).toList();
    map['predicted_list'] = listPredicted?.map((v) => v).toList();
    return map;
  }
}
