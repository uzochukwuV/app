import 'package:apk/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class KNavigationBarTheme {
  KNavigationBarTheme._();

  static const NavigationBarThemeData navigationBarThemeLight =
      NavigationBarThemeData(
    elevation: 4,
    backgroundColor: KColorsConstant.white,
    overlayColor: MaterialStatePropertyAll(KColorsConstant.white),
    indicatorColor: KColorsConstant.white,
    iconTheme:
        MaterialStatePropertyAll(IconThemeData(color: KColorsConstant.black)),
    shadowColor: KColorsConstant.primaryColor,
    surfaceTintColor: KColorsConstant.white,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  );

  static const NavigationBarThemeData navigationBarThemeDark =
      NavigationBarThemeData(
    elevation: 4,
    indicatorColor: KColorsConstant.black,
    iconTheme:
        MaterialStatePropertyAll(IconThemeData(color: KColorsConstant.white)),
    backgroundColor: KColorsConstant.black,
    overlayColor: MaterialStatePropertyAll(KColorsConstant.white),
    shadowColor: KColorsConstant.primaryColor,
    surfaceTintColor: KColorsConstant.black,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  );
}
