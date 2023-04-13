import 'package:coffeeshop/state_management/presentation/controllers/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => Get.find());
  }
}
