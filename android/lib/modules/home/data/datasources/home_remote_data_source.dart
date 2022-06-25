import 'package:caretaker_fpl/modules/home/data/models/get_informations_response_model.dart';
import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';

abstract class HomeRemoteDataSource {
  Future<GetTeamsResponseModel> getTeams();

  Future<GetInformationsResponseModel> getInformations();
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
}
