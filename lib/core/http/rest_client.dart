import 'rest_helper.dart';

abstract class RestClient {
  Future<RestHelper> getClient();
}