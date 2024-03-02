import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/feature_home/data/model/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
