import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constants/api_path_constants.dart';

Dio createDio() {
  Dio dio = Dio(BaseOptions(
    baseUrl: ApiPathConstants.baseUrl,
    connectTimeout: 30000,
    sendTimeout: 30000,
    receiveTimeout: 30000,
    contentType: "application/json",
    responseType: ResponseType.json
  ));

  // DioCacheManager dioCacheManager = DioCacheManager(CacheConfig());
  dio.interceptors.addAll(<Interceptor>[logInterceptor()]);
  return dio;
}

Interceptor logInterceptor() {
  return InterceptorsWrapper(
    onRequest: (options, handler) {
      debugPrint(
          "--> ${options.method}  ${"${options.baseUrl}${options.path}"}");
      debugPrint('Headers:');
      options.headers.forEach((k, dynamic v) => debugPrint('$k: $v'));
      debugPrint('queryParameters:');
      options.queryParameters.forEach((k, dynamic v) => debugPrint('$k: $v'));
      debugPrint(
        '--> END ${options.method}',
      );

      // Do something before request is sent
      debugPrint('\n'
          '-- headers --\n'
          '${options.headers.toString()} \n'
          '-- request --\n -->body'
          '${options.data} \n'
          '');

      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can return a `Response` object or return `dio.resolve(data)`.
      // If you want to reject the request with a error message,
      // you can return a `DioError` object or return `dio.reject(errMsg)`
    },
    onResponse: (response, handler) {
      // Do something with response data
      debugPrint('\n'
          'Response : ${response.requestOptions.uri} \n'
          '-- headers --\n'
          '${response.headers.toString()} \n'
          '-- response --\n'
          '${jsonEncode(response.data)} \n'
          '');

      return handler.next(response); // continue
    },
    onError: (DioError e, handler) {
      return handler.next(e);
    },
  );
}
