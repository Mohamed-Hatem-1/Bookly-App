import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: BookListViewItem(),
        ),
        // childCount: 10,
      ),
    );
  }
}
