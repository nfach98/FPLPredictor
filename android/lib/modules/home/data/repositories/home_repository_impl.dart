import 'package:caretaker_fpl/common/errors/app_error.dart';
import 'package:caretaker_fpl/modules/home/data/datasources/home_remote_data_source.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_trivias_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_players_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_trivias_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_players_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/socket_error.dart';
import '../../../loading/domain/entities/player_entity.dart';
import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppError, GetTeamsEntity>> getTeams() async {
    try {
      GetTeamsResponseModel responseModel = await _remoteDataSource.getTeams();

      return Right(GetTeamsEntity(
        teams: responseModel.teams?.map((e) => TeamEntity(
          id: e.id,
          teamName: e.teamName,
          logo: e.logo,
        )).toList()
      ));
    } on SocketError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppError, GetTriviasEntity>> getTrivias() async {
    try {
      GetTriviasResponseModel responseModel =
          await _remoteDataSource.getTrivias();

      return Right(GetTriviasEntity(
        facts: responseModel.facts?.map((e) => TriviaEntity(
          content: e.content,
          image: e.image,
        )).toList(),
        records: responseModel.records?.map((e) => TriviaEntity(
          content: e.content,
          image: e.image,
        )).toList()
      ));
    } on SocketError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppError, GetPlayersEntity>> getPlayers({int? page, int? teams, String? position, String? search}) async {
    try {
      GetPlayersResponseModel responseModel =
          await _remoteDataSource.getPlayers(
            page: page,
            teams: teams,
            position: position,
            search: search,
          );

      return Right(GetPlayersEntity(
        players: responseModel.players?.map((e) => PlayerEntity(
          id: e.id,
          name: e.name,
          webName: e.webName,
          team: e.team,
          teamId: e.teamId,
          position: e.position,
          code: e.code,
          cost: e.cost,
          shirt: e.shirt,
          ptsActual: e.ptsActual,
          ptsPredicted: e.ptsPredicted,
        )).toList(),
        page: responseModel.page,
        prev: responseModel.prev,
        next: responseModel.next,
        total: responseModel.total,
      ));
    } on SocketError catch (e) {
      return Left(e);
    }
  }
}
