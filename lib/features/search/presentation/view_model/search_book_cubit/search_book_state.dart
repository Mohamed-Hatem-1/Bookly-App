part of 'search_book_cubit.dart';

sealed class SearchBookState extends Equatable {
  const SearchBookState();

  @override
  List<Object> get props => [];
}

final class SearchBookInitial extends SearchBookState {}

final class SearchBookLoading extends SearchBookState {}

final class SearchBookLoaded extends SearchBookState {
  final List<BookModel> books;
  const SearchBookLoaded({required this.books});
}

final class SearchBookError extends SearchBookState {
  final String message;
  const SearchBookError({required this.message});
}
