import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  final BookModel bookModel;
  const BookAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            fontSize: 14,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: 'Free Download',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              launchURL(context, bookModel.volumeInfo.previewLink!);
            },
            fontSize: 16,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            text: 'Preview',
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
