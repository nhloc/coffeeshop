import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView(
      {super.key,
      required this.name,
      required this.price,
      required this.image});
  final String? name;
  final String? price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: productItemHeight,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                ),
                Text(
                  price!,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: productItemHeight - 10,
          child: Image.asset(image!),
        )
      ],
    );
  }
}
