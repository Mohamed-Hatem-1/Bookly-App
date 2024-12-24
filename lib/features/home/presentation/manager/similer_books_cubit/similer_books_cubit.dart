import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  final HomeRepo homeRepo;
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());

  Future<void> fetchSimilertBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold(
      (failure) => emit(SimilerBooksFailure(failure.message)),
      (books) => emit(SimilerBooksLoaded(books)),
    );
  }
}
