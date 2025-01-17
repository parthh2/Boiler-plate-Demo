import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../di/injection_container.dart';
import '../feature/login/presentation/login_page.dart';
import '../feature/splash/presentation/splash_page.dart';

class Routes {
  static const String splash = 'splash';
  static const String login = 'uiLogin';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashPage(),
    login: (BuildContext context) => const LoginPage(),
  };
}

Logger? logger = sl();

navigateTo(BuildContext context, String? routeName) async {
  try {
    if (routeName != null && routeName.isNotEmpty) {
      logger!.t("navigateTo $routeName");
    }
    await Navigator.pushNamed(context, routeName!);
  } catch (e) {
    logger!.e("navigateTo ex $e");
  }
}

// use this method to pop screen as well as set result for that screen
goBack(BuildContext context, {String? route, dynamic result}) {
  try {
    var string = "";
    if (route != null && route.isNotEmpty) {
      string += "route= $route";
    }
    if (result != null) string += " result= $result";
    if (string.isNotEmpty) logger!.t("goBack $string");
    Navigator.pop(context, result);
  } catch (e) {
    logger!.e("goBack ex $e");
  }
}

/// use this method to navigate the screen and remove all the previous screens
navigateAndRemoveAll(
  BuildContext? context,
  String? routeName,
  String? route, {
  dynamic argument,
}) async {
  try {
    if (context != null &&
        route != null &&
        routeName != null &&
        route.isNotEmpty &&
        routeName.isNotEmpty) {
      logger!.t("navigateAndRemoveAll routeName= $routeName route= $route");
      await Navigator.of(context).pushNamedAndRemoveUntil(
        route,
        (Route<dynamic> route) => false,
        arguments: argument,
      );
    }
  } catch (e) {
    logger!.e("navigateAndRemoveAll ex $e");
  }
}

// use this method to navigate screen with push any widget
Future<dynamic> navigatePush(BuildContext context, Widget? route,
    {bool? fullscreenDialog}) async {
  try {
    var string = "";
    if (route != null) string += "route= $route";
    if (fullscreenDialog != null) {
      string += " fullscreenDialog= $fullscreenDialog";
    }
    if (string.isNotEmpty) logger!.t("navigatePush $string");
    return await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => route!,
          fullscreenDialog:
              ((fullscreenDialog == null) ? false : fullscreenDialog),
          settings:
              RouteSettings(name: (route != null) ? route.toString() : "")),
    );
  } catch (e) {
    logger!.e("navigatePush ex$e");
  }
}

// use this method to navigate screen with push any widget
Future<dynamic> navigatePushAndRemoveUntil(BuildContext context, Widget? route,
    {bool? fullscreenDialog}) async {
  try {
    var string = "";
    if (route != null) string += "route= $route";
    if (fullscreenDialog != null) {
      string += " fullscreenDialog= $fullscreenDialog";
    }
    if (string.isNotEmpty) logger!.t("navigatePush $string");
    return await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => route!,
          fullscreenDialog:
              ((fullscreenDialog == null) ? false : fullscreenDialog),
          settings:
              RouteSettings(name: (route != null) ? route.toString() : "")),
      (route) => false,
    );
  } catch (e) {
    logger!.e("navigatePush ex$e");
  }
}

// use this method to navigate screen with push any widget
Future<dynamic> navigatePushWithPageRoute(BuildContext context, Widget? route,
    {int duration = 600}) async {
  try {
    var string = "";
    if (route != null) string += "route= $route";
    if (string.isNotEmpty) logger!.t("navigatePushWithPageRoute $string");
    return await Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(milliseconds: duration),
            pageBuilder: (_, __, ___) => route!,
            settings:
                RouteSettings(name: (route != null) ? route.toString() : "")));
  } catch (e) {
    logger!.e("navigatePushWithPageRoute ex$e");
  }
}

// use this method to navigate screen with root navigator and passing route
Future<dynamic> navigatePushRootNavigator(
    BuildContext context, bool? rootNavigator, Route route) async {
  try {
    var string = "";
    if (rootNavigator != null) {
      string += "rootNavigator= $rootNavigator";
    }
    string += " route= $route";
    if (string.isNotEmpty) logger!.t("navigatePushRootNavigator $string");
    return await Navigator.of(context, rootNavigator: rootNavigator!)
        .push(route);
  } catch (e) {
    logger!.e("navigatePushRootNavigator ex$e");
  }
}

// use this method to navigate screen with replacement passing widget
navigatePushReplacement(BuildContext context, Widget? route) {
  try {
    if (route != null) logger!.t("navigatePushReplacement $route");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => route!,
          settings:
              RouteSettings(name: (route != null) ? route.toString() : "")),
    );
  } catch (e) {
    logger!.e("navigatePushReplacement ex $e");
  }
}

class AppSlideRightRoute extends PageRouteBuilder {
  final Widget? widget;

  AppSlideRightRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget!;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
