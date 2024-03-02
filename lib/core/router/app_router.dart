import 'package:bookly_app/features/feature_home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/features/feature_home/presentation/screens/home_screen.dart';
import 'package:bookly_app/features/feature_search/presentation/screen/search_screen.dart';
import 'package:bookly_app/features/feature_splash_view/presentation/Screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsScreen(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchScreen(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SimilarBooksCubit(
      //       getIt.get<HomeRepoImpl>(),
      //     ),
      //     child: BookDetailsView(
      //       bookModel: state.extra as BookModel,
      //     ),
      //   ),
      // ),
    ],
  );
}
