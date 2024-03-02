import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/feature_home/cubit/featuredbooks/featuredbooks_cubit.dart';
import 'package:bookly_app/features/feature_home/cubit/featuredbooks/featuredbooks_state.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/home_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBookFeaturedListView extends StatelessWidget {
  const HomeBookFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoadedState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: HomeItemCard(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksErrorState) {
          return CustomErrorWidget(errMesage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
