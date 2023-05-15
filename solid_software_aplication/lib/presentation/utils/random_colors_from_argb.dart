import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorsFromARGB {
  static Color randomColor() {
    final Random random = Random();
    const int maxValue = 256;

    return Color.fromARGB(
      random.nextInt(maxValue),
      random.nextInt(maxValue),
      random.nextInt(maxValue),
      random.nextInt(maxValue),
    );
  }
}
