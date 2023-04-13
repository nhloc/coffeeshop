import 'package:coffeeshop/state_management/presentation/controllers/auth/register_cpntroller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => Get.find());
  }
}
