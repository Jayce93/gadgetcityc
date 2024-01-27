import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/appbar_theme.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/bottom_sheet.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/outline_theme.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/text_theme.dart';
import 'package:gadgetcity/utils/theme/custom_theme.dart/textfield_theme.dart';

class GAppTheme {
  GAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue.shade500,
      scaffoldBackgroundColor: Colors.white,
      textTheme: GTextTheme.lightTextTheme,
      chipTheme: GChipTheme.lightChipTheme,
      checkboxTheme: GCheckboxTheme.lightCheckboxTheme,
      appBarTheme: GAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: const ElevatedButtonThemeData(),
      inputDecorationTheme: GTextFormFieldTheme.lightInputDecorationTheme,
      bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: GOutlineButtonTheme.lightOutlinedButtonTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: GTextTheme.darkTextTheme,
      chipTheme: GChipTheme.darkChipTheme,
      checkboxTheme: GCheckboxTheme.darkCheckboxTheme,
      appBarTheme: GAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: const ElevatedButtonThemeData(),
      inputDecorationTheme: GTextFormFieldTheme.darkInputDecorationTheme,
      bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: GOutlineButtonTheme.darkOutlinedButtonTheme);
}
