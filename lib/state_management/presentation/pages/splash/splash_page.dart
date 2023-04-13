import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:coffeeshop/state_management/core/master_images.dart';
import 'package:coffeeshop/state_management/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(MasterImages.coffeeSplash1),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 119, 118, 118),
              BlendMode.darken,
            )),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 500),
            const Expanded(
                flex: 2,
                child: Text(
                  'Good coffee, Good friends, let it blends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: defautltTextSize18*2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            const Expanded(
                flex: 1,
                child: Text(
                  'The best grain, the finest roast, the most powerful flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: defautltTextSize18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            ElevatedButton(
                onPressed: () => Get.offNamed(AppRoutes.login),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(20)))),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: defautltTextSize18, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 50)
          ],
        ),
      ),
    ));
  }
}
