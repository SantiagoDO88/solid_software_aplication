import 'package:flutter/material.dart';
import 'package:solid_software_aplication/presentation/common/style.dart';

class AppTextStyles {
  static TextStyle title({
    Color color = AppColors.white,
    bool isBold = true,
  }) {
    return TextStyle(
      color: color,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontSize: AppDimensions.fontSize,
    );
  }
}
