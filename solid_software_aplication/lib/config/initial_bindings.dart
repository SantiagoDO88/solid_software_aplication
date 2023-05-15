import 'package:get/get.dart';
import 'package:solid_software_aplication/presentation/pages/home/home_controller.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/navigation_controller.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/random_color_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => RandomColorController(), fenix: true);
  }
}
