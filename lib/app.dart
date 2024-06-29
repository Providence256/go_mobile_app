import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/authentication/screens/onboarding.dart';
import 'package:go_mobile/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
