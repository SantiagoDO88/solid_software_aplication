import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_software_aplication/presentation/utils/random_colors_from_argb.dart';

class RandomColorController extends GetxController {
  Rx<Color> backgroundColor = const Color(0xFFFFFFFF).obs;
  Rx<Color> textColor = const Color(0xFFFFFFFF).obs;

  @override
  void onInit() {
    assignColor();
    super.onInit();
  }

  void assignColor() {
    backgroundColor.value = RandomColorsFromARGB.randomColor();
    textColor.value = RandomColorsFromARGB.randomColor();
  }
}
