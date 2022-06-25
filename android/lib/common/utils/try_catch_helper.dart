import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../errors/app_error.dart';
import '../errors/socket_error.dart';

//! Temporary solution for try catch (handle error)

typedef _ErrorResponse<R> = Either<AppError, R> Function(
  List<String> keysErrorMessage,
  Map response,
  Left<AppError, R> otherErrorMessage,
);

//* R means return of Right data
//* S means return Future function from datasource
class TryCatchHelper<R, S> {
  Future<Either<AppError, R>> execute(
    Future<S> Function() method, {
    //* using for show error message by response, possibility key of map response
    required List<String> keysErrorMessage,
    required Either<AppError, R> Function(S data) callback,
    String defaultErrorMessage = 'Terjadi kesalahan',
    //* using for custom handle error
    _ErrorResponse<R>? errorResponse,
  }) async {
    final otherError = Left<AppError, R>(AppError(defaultErrorMessage));

    try {
      final result = await method();
      return callback(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final map = e.response?.data;

        if (map != null && map is Map) {
          if (errorResponse != null) {
            return errorResponse(keysErrorMessage, map, otherError);
          }

          for (var key in keysErrorMessage) {
            if (map.containsKey(key)) {
              return map[key] is String ? Left(AppError(map[key])) : otherError;
            }
          }
          return otherError;
        }
        return otherError;
      } else if (e.type == DioErrorType.other) {
        return otherError;
      }
      return const Left(SocketError());
    } on SocketException catch (_) {
      return const Left(SocketError());
    } catch (_) {
      return otherError;
    }
  }
}
