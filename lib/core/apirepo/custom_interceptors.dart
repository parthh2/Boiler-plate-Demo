import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../di/injection_container.dart';

class CustomInterceptors extends InterceptorsWrapper {
  Logger? logger = sl();

  CustomInterceptors();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger!.log(Level.trace,
        "REQUEST[${options.method}] => PATH: ${options.path} => PARAM: ${options.data}");
    logger!.log(Level.trace,
        "QUERY PARAM: ${options.queryParameters} => EXTRA: ${options.extra}");
    logger!.log(Level.trace, "HEADERS: ${options.headers}");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger!.log(Level.trace,
        "RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} => PARAM: ${response.data}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger!.log(Level.error,
        "ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    return super.onError(err, handler);
  }
}
