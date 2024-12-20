import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';

import 'package:flutter/material.dart';

import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                SimilerBooksSection(),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
