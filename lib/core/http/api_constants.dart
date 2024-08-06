class ApiUrls {
  ApiUrls._();

  static const String countries = "countries";
}

//10 seconds timeout for all apis
const int API_CONNECT_TIMEOUT = 240000;
const int RECEIVE_TIMEOUT = 240000;
const int SEND_TIMEOUT = 240000;
const String SOCKET_EXCEPTION = "SocketException";
const String MISSING_INSTANCEID_EXCEPTION = "MISSING_INSTANCEID_SERVICE";
const int UN_AUTHORISED = 401;
const int REQUEST_ALREADY_SUBMITTED = 416;
const int INTERNET_CONNECTION_ERROR_STATUS_CODE = -1;
const int API_CALL_TIMEOUT_ERROR_STATUS_CODE = -2;
const int SERVICE_DOWN_STATUS_CODE = 503;
const int ANNUAL_DECLARATION_FAILURE_STATUS_CODE = 504;
