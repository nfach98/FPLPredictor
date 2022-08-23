import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:equatable/equatable.dart';

class GetPlayersEntity extends Equatable {
  const GetPlayersEntity({
    this.players, this.prev, this.next, this.page, this.total,
  });

  final List<PlayerEntity>? players;
  final int? prev;
  final int? next;
  final int? page;
  final int? total;

  @override
  List<Object?> get props => [
    players,
    prev,
    next,
    page,
    total,
  ];
}