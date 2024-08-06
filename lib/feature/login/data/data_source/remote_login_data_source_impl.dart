import '../../../../core/http/rest_client.dart';
import '../../../../core/http/rest_helper.dart';
import '../models/login_request_model.dart';
import 'remote_login_data_source.dart';

class RemoteLoginDataSourceImpl extends RemoteLoginDataSource {
  final RestClient? restClient;

  RemoteLoginDataSourceImpl({required this.restClient});

  @override
  Future<dynamic> login(LoginRequestModel model) async {
    RestHelper restHelper = await restClient!.getClient();
    return restHelper.getCountries();
  }
}
