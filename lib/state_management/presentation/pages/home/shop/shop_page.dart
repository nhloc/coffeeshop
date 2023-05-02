import 'dart:ffi';

import 'package:coffeeshop/state_management/core/constants.dart';
import 'package:coffeeshop/state_management/core/data_product.dart';
import 'package:coffeeshop/state_management/domain/entities/product.dart';
import 'package:coffeeshop/state_management/domain/entities/product_category.dart';
import 'package:coffeeshop/state_management/domain/entities/product_item.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/product_category_page.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/product_view.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page_appbar.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page_product_category.dart';
import 'package:coffeeshop/state_management/presentation/pages/home/shop/shop_page_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ShopPage extends StatefulWidget {
  const ShopPage(
      {super.key,
      required this.name,
      required this.address,
      required this.image,
      required this.rating});
  final String? name;
  final String? address;
  final String? image;
  final String? rating;

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<ProductCategory> items = DataProduct.items;
  final data = DataProduct.items[0].products;
  final scrollController = ScrollController();
  double heightInfor = appBarHeight + appInforHeight*2 + 60 - appBarPinnedHeight;
  int selectTab = 0;
  List<double> breakPoints = [];
  List<ProductItem> productItem = [];

  @override
  void initState() {
    onCreateData();
    createBreakPoint();
    scrollController.addListener(() {
      updateCategoryScroll(scrollController.offset);
    });
    super.initState();
  }

  void scrollToCategory(int index) {
    if (selectTab != index) {
      int totalItem = 0;
      for (int i = 0; i < index; i++) {
        totalItem += items[i].products!.length;
      }
      scrollController.animateTo(
        heightInfor + (heightItem * totalItem) + heightCategoryItem * index,
        duration: const Duration(microseconds: 500),
        curve: Curves.ease,
      );
    }
    setState(() {
      selectTab = index;
    });
  }

  void onCreateData() {
    for (int i = 0; i < items.length; i++) {
      productItem.add(ProductItem(category: items[i]));
      for (int j = 0; j < items[i].products!.length; j++) {
        productItem.add(ProductItem(product: items[i].products![j]));
      }
    }
  }

  void createBreakPoint() {
    double breakPoint0 = heightInfor +
        heightCategoryItem +
        heightItem * items[0].products!.length;
    breakPoints.add(breakPoint0);
    for (int i = 1; i < items.length; i++) {
      double breakPoint = breakPoints.last +
          heightCategoryItem +
          heightItem * items[i].products!.length;
      breakPoints.add(breakPoint);
    }
  }

  void updateCategoryScroll(double offset) {
    for (int i = 0; i < items.length; i++) {
      if (i == 0) {
        if (offset < breakPoints.first && selectTab != 0) {
          setState(() {
            selectTab = 0;
          });
        }
      } else if (breakPoints[i - 1] <= offset && offset < breakPoints[i]) {
        if (selectTab != i) {
          setState(() {
            selectTab = i;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          ShopPageAppBar(image: widget.image),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: appInforHeight,
                child: Column(
                  children: [
                    Text(
                      widget.name!,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(widget.address!),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.discount_outlined,
                              color: Colors.red,
                            ),
                            Text(
                              'Ưu đãi 20%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Xem thêm'))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star_rate,
                              color: Colors.yellow,
                            ),
                            Text('4.5',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Padding(padding: EdgeInsets.only(right: 20)),
                            Icon(
                              Icons.shopping_bag_outlined,
                            ),
                            Text('1000+ Đã bán',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Xem thêm'))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: const [
                  Text(
                    'Lựa chon nhiều nhất',
                    style: TextStyle(
                        fontSize: defautltTextSize16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    Product pro = data![index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ShopPageProductView(
                        image: pro.image,
                        name: pro.name,
                        price: pro.price,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: ShopPageProductCategories(
                onChanged: scrollToCategory,
                selectedIndex: selectTab,
              )),
          SliverPadding(
            padding: const EdgeInsets.only(left: defautltHorizontal),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, categoryIndex) {
                  final item = productItem[categoryIndex];
                  if (item.isCategory) {
                    return ProductCategoryPage(name: item.category!.name);
                  } else {
                    return ProductView(
                      name: item.product!.name,
                      price: item.product!.price,
                      image: item.product!.image,
                    );
                  }
                },
                childCount: productItem.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
