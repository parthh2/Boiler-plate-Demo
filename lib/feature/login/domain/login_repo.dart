import 'package:dartz/dartz.dart';

import '../../../core/apirepo/base_api_repo.dart';
import '../../../core/models/failure.dart';
import '../../../core/models/success.dart';
import '../data/models/login_request_model.dart';

abstract class LoginRepo extends BaseApiRepo {
  LoginRepo(super.networkInfo);

  Future<Either<Failure, Success>> login(LoginRequestModel model);
}
