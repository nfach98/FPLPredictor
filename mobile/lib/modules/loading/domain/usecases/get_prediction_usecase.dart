import 'package:caretaker_fpl/modules/loading/domain/entities/get_predict_entity.dart';
import 'package:caretaker_fpl/modules/loading/domain/repositories/loading_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetPredictionUsecase {
  final LoadingRepository _repository;

  GetPredictionUsecase(this._repository);

  Future<Either<AppError, GetPredictEntity>> execute({required List<int> players}) async {
    return _repository.getPredict(players: players);
  }
}