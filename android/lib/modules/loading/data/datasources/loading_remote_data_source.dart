import 'dart:developer';

import 'package:caretaker_fpl/modules/loading/data/models/get_predict_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../common/constants/api_path_constants.dart';
import '../../../../common/errors/socket_error.dart';
import '../models/get_recommend_response_model.dart';

abstract class LoadingRemoteDataSource {
  Future<GetRecommendResponseModel> getRecommendation({List<int>? teams});
  Future<GetPredictResponseModel> getPrediction({required List<int> players});
}

class LoadingRemoteDataSourceImpl implements LoadingRemoteDataSource {
  final Dio _dio;

  LoadingRemoteDataSourceImpl(this._dio);

  @override
  Future<GetRecommendResponseModel> getRecommendation({List<int>? teams}) async {
    try {
      final res = await _dio.get(
        ApiPathConstants.recommend,
        queryParameters: {
          'teams' : teams.toString().substring(1, teams.toString().length - 1)
              .replaceAll(' ', ''),
        }
      );
      GetRecommendResponseModel responseModel =
      GetRecommendResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }

  @override
  Future<GetPredictResponseModel> getPrediction({required List<int> players}) async {
    try {
      final res = await _dio.get(
          ApiPathConstants.predict,
          queryParameters: {
            'players' : players.toString().substring(1, players.toString().length - 1)
                .replaceAll(' ', ''),
          }
      );
      GetPredictResponseModel responseModel =
      GetPredictResponseModel.fromJson(res.data);
      return responseModel;
    } on DioError catch (e) {
      throw SocketError(
        message: e.message
      );
    }
  }
}
