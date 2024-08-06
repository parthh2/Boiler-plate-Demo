import 'package:dartz/dartz.dart';

import '../../../core/apirepo/base_api_repo.dart';
import '../../../core/models/failure.dart';
import '../../../core/models/success.dart';

abstract class SplashRepo extends BaseApiRepo {
  SplashRepo(super.networkInfo);

  Future<Either<Failure, Success>> getData();
}
