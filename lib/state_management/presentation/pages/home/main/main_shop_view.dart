import 'package:flutter/material.dart';

class MainShopView extends StatelessWidget {
  const MainShopView({super.key, required this.image, this.name, this.rating});

  final String? image;
  final String? name;
  final String? rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(name!),
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
