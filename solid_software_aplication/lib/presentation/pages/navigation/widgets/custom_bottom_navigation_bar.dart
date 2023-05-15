import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:solid_software_aplication/presentation/common/style.dart';

import 'package:solid_software_aplication/presentation/pages/navigation/navigation_controller.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/widgets/bottom_navigation_bar_items.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<NavigationController>(
      builder: (navigationController) => Padding(
        padding: EdgeInsets.all(AppDimensions.allPadding),
        child: CustomNavigationBar(
          onTap: (index) => navigationController.selectedMenuOption = index,
          currentIndex: navigationController.selectedMenuOption,
          isFloating: true,
          borderRadius: Radius.circular(AppDimensions.borderRadius),
          iconSize: AppDimensions.iconSize,
          backgroundColor: AppColors.red,
          selectedColor: AppColors.black,
          unSelectedColor: AppColors.white,
          strokeColor: AppColors.black,
          items: BottomNavigationBarItems.items(),
        ),
      ),
    );
  }
}
