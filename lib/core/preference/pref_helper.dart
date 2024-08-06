import '../../feature/login/data/models/login_response_model.dart';

abstract class PrefHelper {
  LoginResponseModel getLoginResponseModel();

  Future<void> setLoginResponseModel(LoginResponseModel model);

  String getUnit();

  Future<void> setUnit(String unit);

  bool isLoggedIn();

  Future<bool> clear();
}
