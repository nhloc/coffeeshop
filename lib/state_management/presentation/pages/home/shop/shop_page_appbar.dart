import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPageAppBar extends StatelessWidget {
  const ShopPageAppBar({super.key, required this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      expandedHeight: appBarHeight,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
        image!,
        fit: BoxFit.cover,
      )),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, top: 10),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
