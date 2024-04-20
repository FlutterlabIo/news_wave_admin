import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color get white => const Color(0xFFFFFFFF);
  static Color get blue => const Color.fromRGBO(71, 90, 215, 1);
  static Color get black => const Color.fromRGBO(51, 54, 71, 1);
  static Color get grey => const Color.fromRGBO(172, 175,195, 1);

  static Color custom(String code) {
    final color = code.replaceAll('#', '');
    return Color(int.parse('0xFF$color'));
  }

  static Color get random {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
}
