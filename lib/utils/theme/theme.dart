import 'package:flutter/material.dart';
import 'package:go_mobile/utils/theme/custom_themes/chip_theme.dart';
import 'package:go_mobile/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:go_mobile/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:go_mobile/utils/theme/custom_themes/text_field_themes.dart';
import 'package:go_mobile/utils/theme/custom_themes/text_themes.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: const Color(0xFFD6062A),
    scaffoldBackgroundColor: const Color(0xffF5F5F5),
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
}
