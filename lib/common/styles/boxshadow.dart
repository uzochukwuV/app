import 'package:apk/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class KBoxShadow {
  KBoxShadow._();

  static const List<BoxShadow> shadow_sm = [
    BoxShadow(
        color: KColorsConstant.shadowlight,
        offset: Offset(2, 2),
        spreadRadius: 1,
        blurRadius: 3)
  ];
}
