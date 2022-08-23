import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetTeamsUsecase {
  final HomeRepository _repository;

  GetTeamsUsecase(this._repository);

  Future<Either<AppError, GetTeamsEntity>> execute() async {
    return _repository.getTeams();
  }
}