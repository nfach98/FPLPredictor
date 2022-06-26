import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:equatable/equatable.dart';

class GetRecommendEntity extends Equatable {
  const GetRecommendEntity({
    this.starting, this.sub, this.totalPredicted,
  });

  final List<PlayerEntity>? starting;
  final List<PlayerEntity>? sub;
  final double? totalPredicted;

  @override
  List<Object?> get props => [
    starting,
    sub,
    totalPredicted,
  ];
}