import '../../../loading/domain/entities/player_entity.dart';

class SquadPageArguments {
  final List<PlayerEntity>? starting;
  final List<PlayerEntity>? sub;

  SquadPageArguments({this.starting, this.sub});
}