import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Image.asset(
          AssetsData.logo,
          height: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
