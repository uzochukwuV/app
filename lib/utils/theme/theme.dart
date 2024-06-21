import 'package:apk/utils/theme/custom_theme/appbar_theme.dart';
import 'package:apk/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:apk/utils/theme/custom_theme/navigation_bar_theme.dart';
import 'package:apk/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppbarTheme.lightAppbarTheme,
      navigationBarTheme: KNavigationBarTheme.navigationBarThemeLight,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppbarTheme.darkAppbarTheme,
      navigationBarTheme: KNavigationBarTheme.navigationBarThemeDark,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme);
}
