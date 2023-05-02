import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:flutter/material.dart';

class ShopPageProductView extends StatelessWidget {
  const ShopPageProductView(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String? image;
  final String? name;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: productHeight,
          child: Image.asset(image!),
        ),
        Text(
          name!,
          style: const TextStyle(fontSize: 14),
        ),
        Text(
          price!,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
