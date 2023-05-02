import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:coffeeshop/state_management/core/data_shop.dart';
import 'package:coffeeshop/state_management/domain/entities/shop.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/main/main_page_view.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/main/main_shop_view.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/main/main_shop_view_all.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Shop> bestShop = DataShop.bestshop;
  List<Shop> newShop = DataShop.newshop;
  List<Shop> allShop = DataShop.allshop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrangeAccent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 5),
            sliver: SliverToBoxAdapter(
              child: MainPageView(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Lựa chon nhiều nhất',
                    style: TextStyle(
                        fontSize: defautltTextSize16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Xem thêm')),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(bestShop.length, (index) {
                  Shop shop = bestShop[index];
                  return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: MainShopView(
                        image: shop.image,
                        name: shop.name,
                        rating: shop.rating,
                        address: shop.address,
                      ));
                })),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Quán mới',
                    style: TextStyle(
                        fontSize: defautltTextSize16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Xem thêm')),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(newShop.length, (index) {
                  Shop shop = newShop[index];
                  return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: MainShopView(
                        image: shop.image,
                        name: shop.name,
                        rating: shop.rating,
                        address: shop.address,
                      ));
                })),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Quanh đây có gì',
                    style: TextStyle(
                        fontSize: defautltTextSize16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Xem thêm')),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    children: List.generate(allShop.length, (index) {
                  Shop shop = allShop[index];
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: MainShopViewAll(
                        image: shop.image,
                        name: shop.name,
                        rating: shop.rating,
                        address: shop.address,
                      ));
                })),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
