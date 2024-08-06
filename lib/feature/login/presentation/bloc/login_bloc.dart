import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/base/base_bloc.dart';
import '../../../../../core/bloc/master_bloc.dart';
import '../../../../../core/bloc/master_event.dart';
import '../../../../../di/injection_container.dart';
import '../../domain/login_repo.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginRepo loginRepo = sl();

  LoginBloc(MasterBloc baseBlocObject) : super(baseBlocObject, InitialState()) {
    on<CallLoginEvent>((event, emit) async {
      await login(event, emit);
    });
  }

  Future<void> login(CallLoginEvent event, Emitter emit) async {
    baseBlocObject!.add(LoadApiEvent());
    final loadedPensionData = await loginRepo.login(event.loginRequestModel);

    loadedPensionData.fold((l) {
      baseBlocObject!.objectModel = l;
      baseBlocObject!.add(ErrorApiEvent());
    }, (r) async {
      baseBlocObject!.add(LoadedApiEvent());
      emit(CallLoginState());
    });
  }
}
