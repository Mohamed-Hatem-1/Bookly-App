import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
