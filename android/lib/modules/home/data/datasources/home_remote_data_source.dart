import 'package:caretaker_fpl/modules/home/data/models/get_informations_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_players_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';

abstract class HomeRemoteDataSource {
  Future<GetTeamsResponseModel> getTeams();

  Future<GetInformationsResponseModel> getInformations();

  Future<GetPlayersResponseModel> getPlayers({int? page, int? teams, String? position, String? search});
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
  Future<GetInformationsResponseModel> getInformations() async {
    try {
      final res = await _dio.get(ApiPathConstants.informations);
      GetInformationsResponseModel responseModel =
      GetInformationsResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }

  @override
  Future<GetPlayersResponseModel> getPlayers({int? page, int? teams, String? position, String? search}) async {
    Map<String, dynamic> query = {
      "page": page ?? 1
    };

    if (teams != null) {
      query["teams"] = teams.toString().substring(1, teams.toString().length - 1)
        .replaceAll(' ', '');
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
