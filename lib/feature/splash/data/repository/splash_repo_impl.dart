import 'package:dartz/dartz.dart';

import '../../../../core/http/network_info.dart';
import '../../../../core/models/failure.dart';
import '../../../../core/models/success.dart';
import '../../domain/splash_repo.dart';
import '../data_source/remote_splash_data_source.dart';

class SplashRepoImpl extends SplashRepo {
  final RemoteSplashDataSource? remoteFetchUsersRepo;

  SplashRepoImpl(
    NetworkInfo super.networkInfo, {
    required this.remoteFetchUsersRepo,
  });

  @override
  Future<Either<Failure, Success>> getData() =>
      baseApiMethod(() => getDataFromAPI());

  Future<Either<Failure, Success>> getDataFromAPI() async {
    var response = await remoteFetchUsersRepo!.getData();
    Success dataModel = Success(response, message: response.message);
    return Right(dataModel);
    // if (!response.status!) {
    //   return Left(
    //       Failure(message: response.message, apiStatus: response.statusCode));
    // } else {
    //   Success dataModel = Success(null, message: response.message);
    //   return Right(dataModel);
    // }
  }
}
