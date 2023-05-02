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
          height: 70,
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
        SizedBox(
          width: 70,
          child: Image.asset(image!),
        )
      ],
    );
  }
}
