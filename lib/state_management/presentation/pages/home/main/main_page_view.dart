import 'package:coffeeshop/state_management/core/master_images.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentPage = 0;
  List<Map<String, String>> walls = [
    {"image": MasterImages.shop2},
    {"image": MasterImages.shop1},
    {"image": MasterImages.shop2},
    {"image": MasterImages.shop1},
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              itemCount: walls.length,
              itemBuilder: (context, index) {
                return Image.asset(walls[index]["image"]!);
              },
              onPageChanged: ((value) => setState(() {
                    currentPage = value;
                  }))),
          Positioned(
              bottom: 16,
              right: 16,
              child: Row(
                children: List.generate(
                    walls.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: BuildDot(isActive: index == currentPage),
                        )),
              ))
        ],
      ),
    );
  }
}

class BuildDot extends StatelessWidget {
  const BuildDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.deepOrange : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
