import 'package:caretaker_fpl/modules/home/domain/entities/get_informations_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetInformationsUsecase {
  final HomeRepository _repository;

  GetInformationsUsecase(this._repository);

  Future<Either<AppError, GetInformationsEntity>> execute() async {
    return _repository.getInformations();
  }
}