import 'package:bookly_app/features/feature_home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/feature_home/cubit/best_seler_books/best_seler_books_state.dart';

class BestSelerBooksCubit extends Cubit<BestSelerBooksState> {
  BestSelerBooksCubit(this.homeRepo) : super(BestSelerBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> getBestSelerdBooks() async {
    emit(BestSelerBooksLoadingState());
    var result = await homeRepo.fetchBestSellerBooks();

    result.fold((faliure) {
      emit(BestSelerBooksErrorState(faliure.errMessage));
    }, (books) {
      emit(BestSelerBooksLoadedState(books));
    });
  }
}
