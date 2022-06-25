import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:equatable/equatable.dart';

class GetTeamsEntity extends Equatable{
  const GetTeamsEntity({this.teams});

  final List<TeamEntity>? teams;

  @override
  List<Object?> get props => [teams];
}
