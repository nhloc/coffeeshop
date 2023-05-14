import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:coffeeshop/state_management/core/master_images.dart';
import 'package:coffeeshop/state_management/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MasterImages.coffeeSplash2),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 175, 172, 172), BlendMode.darken))),
      child: Center(
          child: Column(
        children: [
          const SizedBox(height: 100),
          const Expanded(
              flex: 4,
              child: Text(
                'THE COFFEE SHOP',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: defautltTextSize16 * 2,
                    fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defautltHorizontal),
                child: Column(children: [
                  const Row(
                    children: [
                      Text(
                        'Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: defautltTextSize18 * 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: defautltHorizontal),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'Enter your email...'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: defautltHorizontal),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'Enter your password...'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () => Get.offNamed(AppRoutes.home),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(20)))),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: defautltTextSize16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If you dont have account?',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () => Get.offNamed(AppRoutes.register),
                          child: const Text('Register'))
                    ],
                  )
                ]),
              )),
        ],
      )),
    ));
  }
}
