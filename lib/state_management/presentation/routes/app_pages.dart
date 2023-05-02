import 'package:coffeeshop/state_management/presentation/bindings/auth/login_binding.dart';
import 'package:coffeeshop/state_management/presentation/bindings/auth/register_binding.dart';
import 'package:coffeeshop/state_management/presentation/bindings/home/home_binding.dart';
import 'package:coffeeshop/state_management/presentation/bindings/splash/splash_binding.dart';
import 'package:coffeeshop/state_management/presentation/pages/auth/login_page.dart';
import 'package:coffeeshop/state_management/presentation/pages/auth/register_page.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/home_page.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page.dart';
import 'package:coffeeshop/state_management/presentation/pages/splash/splash_page.dart';
import 'package:coffeeshop/state_management/presentation/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.register,
        page: () => const RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
