import 'package:coffeeshop/state_management/presentation/pages/home/main/main_page_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrangeAccent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
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
              ))
        ],
      ),
    );
  }
}
