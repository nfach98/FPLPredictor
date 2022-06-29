import 'package:caretaker_fpl/modules/home/domain/entities/get_trivias_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetTriviasUsecase {
  final HomeRepository _repository;

  GetTriviasUsecase(this._repository);

  Future<Either<AppError, GetTriviasEntity>> execute() async {
    return _repository.getTrivias();
  }
}