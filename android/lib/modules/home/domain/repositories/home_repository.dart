import 'package:caretaker_fpl/modules/home/domain/entities/get_trivias_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_players_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

abstract class HomeRepository {
  Future<Either<AppError, GetTeamsEntity>> getTeams();
  Future<Either<AppError, GetTriviasEntity>> getTrivias();
  Future<Either<AppError, GetPlayersEntity>> getPlayers({
    int? page,
    int? team,
    String? position,
    String? search,
  });
}
