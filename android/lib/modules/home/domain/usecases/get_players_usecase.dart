import 'package:caretaker_fpl/modules/home/domain/entities/get_players_entity.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../common/errors/app_error.dart';

class GetPlayersUsecase {
  final HomeRepository _repository;

  GetPlayersUsecase(this._repository);

  Future<Either<AppError, GetPlayersEntity>> execute(GetPlayersParams params) async {
    return _repository.getPlayers(
      page: params.page,
      teams: params.teams,
      position: params.position,
      search: params.search,
    );
  }
}

class GetPlayersParams {
  final int? page;
  final int? teams;
  final String? position;
  final String? search;

  GetPlayersParams({this.page, this.teams, this.position, this.search});
}