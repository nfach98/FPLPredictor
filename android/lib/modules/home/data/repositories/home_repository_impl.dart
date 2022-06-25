import 'package:caretaker_fpl/common/errors/app_error.dart';
import 'package:caretaker_fpl/modules/home/data/datasources/home_remote_data_source.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_informations_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_informations_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/information_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/entities/team_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/socket_error.dart';
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
  Future<Either<AppError, GetInformationsEntity>> getInformations() async {
    try {
      GetInformationsResponseModel responseModel =
          await _remoteDataSource.getInformations();

      return Right(GetInformationsEntity(
        facts: responseModel.facts?.map((e) => InformationEntity(
          content: e.content,
          image: e.image,
        )).toList(),
        records: responseModel.records?.map((e) => InformationEntity(
          content: e.content,
          image: e.image,
        )).toList()
      ));
    } on SocketError catch (e) {
      return Left(e);
    }
  }
}
