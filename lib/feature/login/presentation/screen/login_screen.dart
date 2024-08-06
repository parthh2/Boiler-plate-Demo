import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/base/base_bloc_widget.dart';
import '../../../../config/flavor_config.dart';
import '../../../../core/colors/color_list.dart';
import '../../../../core/constants/image_constants.dart';
import '../../../../core/constants/label_constants.dart';
import '../../data/models/login_request_model.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginScreen extends BaseBlocWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends BaseBlocWidgetState<LoginScreen> {
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (!FlavorConfig.isProd()) {
      emailTextEditingController.text = 'abc@gmail.com';
      passwordTextEditingController.text = 'abcdefghijklmnop';
    }
  }

  @override
  Widget getCustomBloc() => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: BlocListener<LoginBloc, LoginState>(
            listener: (_, state) async {
              if (state is CallLoginState) {
                await Future.delayed(const Duration(milliseconds: 300));
                if (!mounted) return;

                showToast('success');
              }
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        ColorList.accentColor,
                        ColorList.white,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                      stops: const [0.0, 1.0],
                    ),
                  ),
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: const SizedBox(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorList.blueColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: Image.asset(
                        imageSearch,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              imageSearch,
                              width: 190,
                              height: 100,
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Text(
                            'Welcome Back !',
                            style: TextStyle(
                              color: ColorList.greenColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.zero,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 35,
                                bottom: 25,
                                left: 20,
                                right: 20,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ColorList.searchBackColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          imageEmail,
                                          width: 15,
                                          height: 15,
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                emailTextEditingController,
                                            style: TextStyle(
                                              color: ColorList.black,
                                              fontSize: 12,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: enterYourEmailString,
                                              border: InputBorder.none,
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets.all(0),
                                              hintStyle: TextStyle(
                                                color: ColorList.grayColor,
                                                fontSize: 11,
                                              ),
                                            ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            textInputAction:
                                                TextInputAction.next,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ColorList.searchBackColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          imagePassword,
                                          width: 15,
                                          height: 15,
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                passwordTextEditingController,
                                            style: TextStyle(
                                              color: ColorList.black,
                                              fontSize: 12,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: enterPasswordString,
                                              border: InputBorder.none,
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets.all(0),
                                              hintStyle: TextStyle(
                                                color: ColorList.grayColor,
                                                fontSize: 11,
                                              ),
                                            ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onClickLogin();
                                    },
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: ColorList.greenColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        'Sign In',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorList.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  onClickLogin() {
    if (emailTextEditingController.text.isEmpty) {
      showToast('Enter email address');
      return;
    }
    if (passwordTextEditingController.text.isEmpty) {
      showToast('Enter password');
      return;
    }
    BlocProvider.of<LoginBloc>(context).add(CallLoginEvent(
        loginRequestModel: LoginRequestModel(
            email: emailTextEditingController.text,
            password: passwordTextEditingController.text)));
  }
}
