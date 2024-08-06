import 'package:dartz/dartz.dart';

import '../../../../core/http/network_info.dart';
import '../../../../core/models/failure.dart';
import '../../../../core/models/success.dart';
import '../../../../core/preference/pref_helper.dart';
import '../../../../di/injection_container.dart';
import '../../domain/login_repo.dart';
import '../data_source/remote_login_data_source.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';

class LoginRepoImpl extends LoginRepo {
  RemoteLoginDataSource remoteLoginDataSource = sl();

  LoginRepoImpl(NetworkInfo super.networkInfo);

  @override
  Future<Either<Failure, Success>> login(LoginRequestModel model) =>
      baseApiMethod(() => loginFromAPI(model));

  Future<Either<Failure, Success>> loginFromAPI(LoginRequestModel model) async {
    // LoginResponseModel responseModel =
    //     LoginResponseModel.fromJson(await remoteLoginDataSource.login(model));
    // Saving user data
    // PrefHelper helper = sl();
    // await helper.setLoginResponseModel(responseModel);
    return Right(Success(null));
  }
}
