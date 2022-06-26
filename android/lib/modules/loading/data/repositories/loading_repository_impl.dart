import 'package:caretaker_fpl/common/errors/app_error.dart';
import 'package:caretaker_fpl/modules/loading/data/datasources/loading_remote_data_source.dart';
import 'package:caretaker_fpl/modules/loading/data/models/get_recommend_response_model.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/get_recommend_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/player_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/repositories/loading_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/socket_error.dart';

class LoadingRepositoryImpl implements LoadingRepository {
  final LoadingRemoteDataSource _remoteDataSource;

  LoadingRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppError, GetRecommendEntity>> getRecommend({List<int>? teams}) async {
    try {
      GetRecommendResponseModel responseModel =
          await _remoteDataSource.getRecommendation(teams: teams);

      return Right(GetRecommendEntity(
        starting: responseModel.starting?.map((e) => PlayerEntity(
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
        sub: responseModel.sub?.map((e) => PlayerEntity(
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
        totalPredicted: responseModel.totalPredicted,
      ));
    } on SocketError catch (e) {
      return Left(e);
    }
  }
}
