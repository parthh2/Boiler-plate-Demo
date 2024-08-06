import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/di/injection_container.dart' as di;
import 'core/colors/color_list.dart';
import 'core/constants/label_constants.dart';
import 'core/preference/prefs.dart';
import 'routes/custom_navigator_observer.dart';
import 'routes/routes.dart';

void mainDelegate() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Prefs.init();
    await di.init();
    runApp(
      const MyApp(),
    );
  }, (error, stackTrace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorList.accentMaterialColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => appName,
      initialRoute: Routes.splash,
      routes: Routes.routes,
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: ColorList.accentColor,
        appBarTheme: AppBarTheme(
          color: ColorList.accentColor,
        ),
      ),
      navigatorObservers: <NavigatorObserver>[
        CustomNavigatorObserver(),
      ],
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}
