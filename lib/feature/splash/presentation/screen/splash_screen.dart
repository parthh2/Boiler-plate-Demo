import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/base/base_bloc_widget.dart';
import '../../../../core/constants/image_constants.dart';
import '../../../../routes/routes.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';

class SplashScreen extends BaseBlocWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends BaseBlocWidgetState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  checkLogin() => BlocProvider.of<SplashBloc>(context).add(CheckLoginEvent());

  @override
  Widget getCustomBloc() => BlocListener<SplashBloc, SplashState>(
        listener: (_, state) {
          if (state is GoToLoginState) {
            navigateAndRemoveAll(context, Routes.login, Routes.login);
          }
        },
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(imageUserPlaceHolder, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.only(left: 39, right: 39, top: 54),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(imageUserPlaceHolder),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
