import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/features/search/presentation/view_model/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookInitial) {
          return const Center(
            child: Text('Start searching for a book...'),
          );
        } else if (state is SearchBookLoaded) {
          if (state.books.isEmpty) {
            return const Center(
              child: Text('No books found...'),
            );
          }
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            ),
          );
        } else if (state is SearchBookError) {
          return Center(
            child: Text(
              state.message,
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
