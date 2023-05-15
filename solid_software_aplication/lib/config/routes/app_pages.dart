import 'package:get/get.dart';

import 'package:solid_software_aplication/config/routes/app_routes.dart';
import 'package:solid_software_aplication/presentation/pages/home/home_page.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/navigation_page.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/random_color_page.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: AppRoutes.navigation,
      page: () => const NavigationPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.randomColor,
      page: () => const RandomColorPage(),
    ),
  ];
}
