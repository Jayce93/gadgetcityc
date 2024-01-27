import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/screens/onboarding/onboarding.dart';
import 'package:gadgetcity/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
