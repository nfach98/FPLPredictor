import 'package:caretaker_fpl/modules/loading/domain/entities/get_predict_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/entities/get_recommend_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

abstract class LoadingRepository {
  Future<Either<AppError, GetRecommendEntity>> getRecommend({List<int>? teams});
  Future<Either<AppError, GetPredictEntity>> getPredict({required List<int> players});
}
