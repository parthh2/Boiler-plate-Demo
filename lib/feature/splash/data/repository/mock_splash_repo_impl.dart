import 'package:dartz/dartz.dart';

import '../../../../core/http/network_info.dart';
import '../../../../core/models/failure.dart';
import '../../../../core/models/success.dart';
import '../../domain/splash_repo.dart';

class MockSplashRepoImpl extends SplashRepo {
  MockSplashRepoImpl(NetworkInfo super.networkInfo);

  @override
  Future<Either<Failure, Success>> getData() async => Right(Success(null));
}
