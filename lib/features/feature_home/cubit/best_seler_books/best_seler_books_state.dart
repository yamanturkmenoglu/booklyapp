import 'package:bookly_app/features/feature_home/data/model/bookmodel.dart';

abstract class BestSelerBooksState {}

class BestSelerBooksInitialState extends BestSelerBooksState {}

class BestSelerBooksLoadingState extends BestSelerBooksState {}

class BestSelerBooksLoadedState extends BestSelerBooksState {
  final List<BookModel> books;

  BestSelerBooksLoadedState(this.books);
}

class BestSelerBooksErrorState extends BestSelerBooksState {
  final String errMessage;

  BestSelerBooksErrorState(this.errMessage);
}
