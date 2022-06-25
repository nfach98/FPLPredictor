import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable {
  const TeamEntity({this.id, this.teamName, this.logo});

  final int? id;
  final String? teamName;
  final String? logo;

  @override
  List<Object?> get props => [id, teamName, logo];
}
