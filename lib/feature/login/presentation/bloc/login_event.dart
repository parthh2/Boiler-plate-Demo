import '../../data/models/login_request_model.dart';

abstract class LoginEvent {}

class CallLoginEvent extends LoginEvent {
  final LoginRequestModel loginRequestModel;

  CallLoginEvent({required this.loginRequestModel});
}
