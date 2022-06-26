import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/get_recommend_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/repositories/loading_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetRecommendUsecase {
  final LoadingRepository _repository;

  GetRecommendUsecase(this._repository);

  Future<Either<AppError, GetRecommendEntity>> execute({List<int>? teams}) async {
    return _repository.getRecommend(teams: teams);
  }
}