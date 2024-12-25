import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  final SearchRepo searchRepo;
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());

  Future<void> fetchSearchedBooks({required String query}) async {
    if (query.isEmpty) {
      emit(SearchBookInitial());
      return;
    }
    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchedBooks(query: query);
    result.fold(
      (failure) => emit(SearchBookError(message: failure.message)),
      (books) => emit(SearchBookLoaded(books: books)),
    );
  }
}
