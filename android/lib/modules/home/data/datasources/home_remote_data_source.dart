import 'package:caretaker_fpl/modules/home/data/models/get_trivias_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_players_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';

abstract class HomeRemoteDataSource {
  Future<GetTeamsResponseModel> getTeams();

  Future<GetTriviasResponseModel> getTrivias();

  Future<GetPlayersResponseModel> getPlayers({int? page, int? team, String? position, String? search});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<GetTeamsResponseModel> getTeams() async {
    try {
      final res = await _dio.get(ApiPathConstants.teams);
      GetTeamsResponseModel responseModel =
      GetTeamsResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
          message: e.message
      );
    }
  }

  @override
  Future<GetTriviasResponseModel> getTrivias() async {
    try {
      final res = await _dio.get(ApiPathConstants.trivias);
      GetTriviasResponseModel responseModel =
      GetTriviasResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }

  @override
  Future<GetPlayersResponseModel> getPlayers({int? page, int? team, String? position, String? search}) async {
    Map<String, dynamic> query = {
      "page": page ?? 1,
      "limit": 24,
    };

    if (team != null && team > 0) {
      query["team"] = team;
    }
    if (position != null) {
      query["position"] = position;
    }
    if (search != null) {
      query["search"] = search;
    }

    try {
      final res = await _dio.get(
        ApiPathConstants.players,
        queryParameters: query,
      );
      GetPlayersResponseModel responseModel =
      GetPlayersResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }
}
