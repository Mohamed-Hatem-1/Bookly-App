import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: BookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          kDefaultBookImage,
                ),
              ),
            ),
          );
        } else if (state is SimilerBooksFailure) {
          return Center(
            child: Text(state.errMessage),
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
