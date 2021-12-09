import 'package:delevery_diego/theming_state_management/presentation/routes/routes.dart';
import 'package:delevery_diego/theming_state_management/presentation/splash_screen.dart';
import 'package:delevery_diego/theming_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainThemeAndStateManagementApp extends StatelessWidget {
  const MainThemeAndStateManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      navigatorKey: Get.key,
      theme: lightTheme,
      darkTheme: darkTheme,
      getPages: routes(),
      initialRoute: '/splash',
    );
  }
}
