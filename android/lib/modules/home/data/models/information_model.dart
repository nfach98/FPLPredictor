import 'dart:collection';

class InformationModel {
  InformationModel({this.content, this.image});

  final String? content;
  final String? image;

  factory InformationModel.fromJson(Map<String, dynamic> json) => InformationModel(
    content: json['content'],
    image: json['image'],
  );

  HashMap<String, dynamic> get toMap {
    HashMap<String, dynamic> map = HashMap<String, dynamic>();
    map['content'] = content;
    map['image'] = image;
    return map;
  }
}
