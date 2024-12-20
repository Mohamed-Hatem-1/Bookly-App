import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
          ),
          child: const BookImage(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 36,
        ),
        const BookAction(),
      ],
    );
  }
}
