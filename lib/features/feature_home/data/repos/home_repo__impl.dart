import 'package:bookly_app/core/constants/api_services.dart';
import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/feature_home/data/model/bookmodel.dart';
import 'package:bookly_app/features/feature_home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return Right(books);
      // ignore: unused_catch_clause
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return Right(books);
      // ignore: unused_catch_clause
    } on Exception catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
