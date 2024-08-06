import '../models/login_request_model.dart';

abstract class RemoteLoginDataSource {
  Future<dynamic> login(LoginRequestModel model);
}
