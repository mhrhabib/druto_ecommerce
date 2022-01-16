import 'package:druto_ecommerce/pages/home/home_controller.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<HomeController>(HomeController());
  }
}
