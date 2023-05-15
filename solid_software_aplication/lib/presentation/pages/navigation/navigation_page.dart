import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_software_aplication/presentation/pages/home/home_page.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/navigation_controller.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/widgets/custom_bottom_navigation_bar.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/random_color_page.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NavigationController>(
      builder: (navigationController) => Scaffold(
        body: IndexedStack(
          index: navigationController.selectedMenuOption,
          children: const [
            HomePage(),
            RandomColorPage(),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
