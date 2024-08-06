import 'package:dio/dio.dart';

import '../../config/flavor_config.dart';
import 'api_constants.dart';
import 'rest_client.dart';
import 'rest_helper.dart';

class RestClientImpl implements RestClient {
  RestClientImpl({required this.dioClient});

  final Dio dioClient;

  @override
  Future<RestHelper> getClient() async {
    dioClient.options.baseUrl = FlavorConfig.instance!.baseUrl;
    // PrefHelper? helper = sl();
    //
    // Map<String, dynamic> headersMap = {
    //   'Content-Type': 'application/json',
    // };
    //
    // headersMap.putIfAbsent('Authorization',
    //     () => 'Bearer ${helper.getLoginResponseModel().token}');
    // headersMap.putIfAbsent(
    //     'AccessKeyId', () => 'SAMPLE ACCESS KEY ID');
    // headersMap.putIfAbsent(
    //     'AccessKeyValue', () => 'SAMPLE ACCESS KEY VALUE');
    //
    // dioClient.options.headers = headersMap;

    dioClient.options.connectTimeout =
        const Duration(milliseconds: API_CONNECT_TIMEOUT);
    dioClient.options.receiveTimeout =
        const Duration(milliseconds: RECEIVE_TIMEOUT);
    return RestHelper(dioClient);
  }

  Future<void> attachCertificate(
      {required bool isInfinite,
      bool isContentPages = false,
      bool isMultipart = false,
      Map<String, dynamic>? extraHeaders}) async {
    // Settings SSL Pinning Certificate
    // SecurityContext clientContext = SecurityContext(withTrustedRoots: false);
    // var certificate = (await rootBundle.load(FlavorConfig.instance!.cert_path))
    //     .buffer
    //     .asInt8List();
    // clientContext.setTrustedCertificatesBytes(certificate);
    // (dioClient.httpClientAdapter as DefaultHttpClientAdapter)
    //         .onHttpClientCreate =
    //     (HttpClient client) => HttpClient(context: clientContext);
  }
}
