import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../feature/login/data/models/login_error_response_model.dart';
import '../../routes/routes.dart';
import '../constants/message_constants.dart';
import '../http/network_info.dart';
import '../models/failure.dart';
import '../models/success.dart';

abstract class BaseApiRepo {
  final NetworkInfo? networkInfo;

  BaseApiRepo(this.networkInfo);

  Future<Either<Failure, Success>> baseApiMethod(
      Future<Either<Failure, Success>> Function() apiCall) async {
    bool isConnected = await networkInfo!.isConnected;
    if (!isConnected) {
      return internetConnectionException();
    }

    try {
      return await apiCall();
    } on DioException catch (e) {
      logger?.d("Baseurl ${e.requestOptions.baseUrl}");
      logger?.d("DioError ${e.message}");
      if (e.response != null) {
        int statusCode = e.response?.statusCode ?? 0;
        if (statusCode == 500) {
          return Left(Failure(
              apiStatus: statusCode,
              message: e.response?.statusMessage ?? '',
              model: e.response?.data));
        } else if (statusCode == 401) {
          return Left(Failure(
              apiStatus: statusCode,
              message: e.response?.statusMessage ?? '',
              model: ((e.response?.data?.toString() ?? '').isNotEmpty)
                  ? LoginErrorResponseModel.fromJson(e.response?.data)
                  : ''));
        }
      }
      return internetConnectionException();
    } catch (e) {
      return internetConnectionException();
    }
  }

  Left<Failure, Success> internetConnectionException() {
    return Left(
      Failure(
        message: labelPleaseCheckInternetConnection,
        apiStatus: 404,
      ),
    );
  }
}