import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:flutter/material.dart';

class ProductCategoryPage extends StatelessWidget {
  const ProductCategoryPage({super.key, required this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightCategoryItem,
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Text(
          name!,
          style: const TextStyle(
            fontSize: defautltTextSize18,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
