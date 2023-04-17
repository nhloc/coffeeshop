import 'package:coffeeshop/state_management/presentation/bindings/system/main_binding.dart';
import 'package:coffeeshop/state_management/presentation/pages/splash/splash_page.dart';
import 'package:coffeeshop/state_management/presentation/routes/app_pages.dart';
import 'package:coffeeshop/state_management/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagenment extends StatelessWidget {
  const StateManagenment({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashPage(),
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
      initialBinding: MainBinding(),
      theme: ThemeData(fontFamily: "Inter"),
      debugShowCheckedModeBanner: false,
    );
  }
}
