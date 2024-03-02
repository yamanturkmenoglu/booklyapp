import 'package:bookly_app/core/constants/api_services.dart';
import 'package:bookly_app/features/feature_home/data/repos/home_repo__impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiServices>(),
  ));
}
