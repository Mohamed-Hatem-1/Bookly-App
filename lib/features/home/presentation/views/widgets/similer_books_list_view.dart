import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(
            right: 16,
          ),
          child: BookImage(),
        ),
      ),
    );
  }
}
