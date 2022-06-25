import 'package:equatable/equatable.dart';

class InformationEntity extends Equatable{
  const InformationEntity({this.content, this.image});

  final String? content;
  final String? image;

  @override
  List<Object?> get props => [content, image];
}
