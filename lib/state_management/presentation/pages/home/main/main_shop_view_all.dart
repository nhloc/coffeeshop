import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainShopViewAll extends StatelessWidget {
  const MainShopViewAll(
      {super.key, required this.image, this.name, this.rating, this.address});

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset(image!),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Wrap(children: [
                      Text(
                        "${name!} - ${address!}",
                      ),
                    ]),
                  ),
                  Text(rating!),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
