import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_aplication/presentation/common/style.dart';

class BottomNavigationBarItems {
  static List<CustomNavigationBarItem> items() {
    return [
      CustomNavigationBarItem(
        icon: const Icon(Icons.home),
        title: const Text(
          AppStrings.home,
        ),
      ),
      CustomNavigationBarItem(
        icon: const Icon(Icons.flutter_dash),
        title: const Text(
          AppStrings.randomColor,
        ),
      ),
    ];
  }
}
