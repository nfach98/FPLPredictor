import 'package:equatable/equatable.dart';

class PlayerEntity extends Equatable {
  const PlayerEntity({
    this.id,
    this.name,
    this.webName,
    this.position,
    this.team,
    this.teamId,
    this.shirt,
    this.code,
    this.cost,
    this.ptsActual,
    this.ptsPredicted
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

  @override
  List<Object?> get props => [
    id, name, webName, position, team, teamId, shirt, code, cost, ptsActual, ptsPredicted
  ];
}
