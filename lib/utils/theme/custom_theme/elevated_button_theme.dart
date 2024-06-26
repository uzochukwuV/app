import 'package:apk/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  // to avoid creating instance
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: KColorsConstant.primaryColor,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: KColorsConstant.primaryColor),
          padding: const EdgeInsets.symmetric(vertical: 10),
          textStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: KColorsConstant.primaryColor,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: KColorsConstant.primaryColor),
          padding: const EdgeInsets.symmetric(vertical: 10),
          textStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
}
