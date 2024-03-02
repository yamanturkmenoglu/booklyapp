import 'package:bookly_app/features/feature_home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/feature_home/cubit/featuredbooks/featuredbooks_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((faliure) {
      emit(FeaturedBooksErrorState(faliure.errMessage));
     
    }, (books) {
      emit(FeaturedBooksLoadedState(books));
    });
  }
}
