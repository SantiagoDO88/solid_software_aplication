import 'package:flutter/material.dart';
import 'package:solid_software_aplication/presentation/common/style.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/random_color_controller.dart';
import 'package:solid_software_aplication/presentation/utils/random_colors_from_argb.dart';

class RandomColorPageBody extends StatelessWidget {
  final RandomColorController randomColorController;
  
  const RandomColorPageBody({
    super.key,
    required this.randomColorController,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        randomColorController.backgroundColor.value =
            RandomColorsFromARGB.randomColor();
        randomColorController.textColor.value =
            RandomColorsFromARGB.randomColor();
      },
      child: Center(
        child: Text(
          AppStrings.tapToChangeColor,
          style: AppTextStyles.title(
            color: randomColorController.textColor.value,
          ),
        ),
      ),
    );
  }
}
