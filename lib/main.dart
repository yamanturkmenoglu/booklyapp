import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/core/constants/services_locator.dart';
import 'package:bookly_app/core/router/app_router.dart';
import 'package:bookly_app/features/feature_home/cubit/best_seler_books/best_seler_books_cubit.dart';
import 'package:bookly_app/features/feature_home/cubit/featuredbooks/featuredbooks_cubit.dart';
import 'package:bookly_app/features/feature_home/data/repos/home_repo__impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..getFeaturedBooks()),
        BlocProvider(
          create: (context) => BestSelerBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..getBestSelerdBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
