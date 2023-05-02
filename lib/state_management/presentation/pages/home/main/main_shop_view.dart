import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainShopView extends StatelessWidget {
  const MainShopView(
      {super.key,
      required this.image,
      required this.name,
      required this.rating,
      required this.address});

  final String? image;
  final String? name;
  final String? rating;
  final String? address;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ShopPage(
            name: name,
            address: address,
            image: image,
            rating: rating,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset(image!),
          ),
          Text(rating!),
          Text(name!)
        ],
      ),
    );
  }
}
