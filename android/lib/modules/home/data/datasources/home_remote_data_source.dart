import 'package:caretaker_fpl/modules/home/data/models/get_teams_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';

abstract class HomeRemoteDataSource {
  Future<GetTeamsResponseModel> getTeams();
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
      Map data = e.response?.data;
      throw SocketError(
        message: data.containsKey('message')
            ? data['message'] : 'Network error');
    }
  }
}
