import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';
import '../models/get_recommend_response_model.dart';

abstract class LoadingRemoteDataSource {
  Future<GetRecommendResponseModel> getRecommendation({List<int>? teams});
}

class LoadingRemoteDataSourceImpl implements LoadingRemoteDataSource {
  final Dio _dio;

  LoadingRemoteDataSourceImpl(this._dio);

  @override
  Future<GetRecommendResponseModel> getRecommendation({List<int>? teams}) async {
    try {
      log(teams.toString().substring(1, teams.toString().length - 2)
          .replaceAll(' ', ''), name: 'teams');
      final res = await _dio.get(ApiPathConstants.recommend);
      GetRecommendResponseModel responseModel =
      GetRecommendResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }
}
