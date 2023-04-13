import 'package:coffeeshop/state_management/presentation/controllers/auth/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => Get.find());
  }
}
