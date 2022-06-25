import 'package:caretaker_fpl/modules/home/domain/entities/get_teams_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

abstract class HomeRepository {
  Future<Either<AppError, GetTeamsEntity>> getTeams();
}
