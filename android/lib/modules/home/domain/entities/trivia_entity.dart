import 'package:equatable/equatable.dart';

class TriviaEntity extends Equatable{
  const TriviaEntity({this.content, this.image});

  final String? content;
  final String? image;

  @override
  List<Object?> get props => [content, image];
}
