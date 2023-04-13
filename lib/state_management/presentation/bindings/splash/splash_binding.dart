import 'package:coffeeshop/state_management/presentation/controllers/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => Get.find());
  }
}
