import 'package:bookly_app/features/feature_home/data/model/bookmodel.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksLoadedState extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksLoadedState(this.books);
}

class FeaturedBooksErrorState extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksErrorState(this.errMessage);
}
