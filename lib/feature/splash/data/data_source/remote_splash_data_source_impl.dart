import '../../../../core/http/rest_client.dart';
import '../../../../core/http/rest_helper.dart';
import 'remote_splash_data_source.dart';

class RemoteSplashDataSourceImpl extends RemoteSplashDataSource {
  final RestClient? restClient;

  RemoteSplashDataSourceImpl({required this.restClient});

  @override
  Future<dynamic> getData() async {
    RestHelper restHelper = await restClient!.getClient();
    return restHelper.getCountries();
  }
}
