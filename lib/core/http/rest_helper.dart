import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../feature/login/data/models/CountryResponse.dart';
import 'api_constants.dart';

part 'rest_helper.g.dart';

//flutter pub run build_runner build
@RestApi(baseUrl: "")
abstract class RestHelper {
  factory RestHelper(Dio dio, {String? baseUrl}) = _RestHelper;

  @GET(ApiUrls.countries)
  Future<CountryResponse> getCountries();
}
