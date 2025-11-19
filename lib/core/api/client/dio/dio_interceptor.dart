import 'package:dio/dio.dart';
import 'package:test_project/core/api/client/endpoints.dart';
import 'package:test_project/core/utils/loggers/logger.dart';

class DioInterceptor {
  final Dio _dio;

  DioInterceptor(this._dio) {
    _dio
      ..options.baseUrl = EndPoints.baseUrl
      ..options.connectTimeout = const Duration(seconds: 20)
      ..options.receiveTimeout = const Duration(seconds: 20)
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            AppLogger.d('REQUEST[${options.method}] => PATH: ${options.path}');
            handler.next(options);
          },
          onResponse: (response, handler) {
            AppLogger.d('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
            handler.next(response);
          },
          onError: (DioException e, handler) {
            AppLogger.e('ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}', error: e, stackTrace: e.stackTrace);
            handler.next(e);
          },
        ),
      );
  }

  Dio get client => _dio;
}
