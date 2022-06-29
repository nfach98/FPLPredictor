import 'dart:collection';

class TriviaModel {
  TriviaModel({this.content, this.image});

  final String? content;
  final String? image;

  factory TriviaModel.fromJson(Map<String, dynamic> json) => TriviaModel(
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
