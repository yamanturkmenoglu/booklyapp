import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/feature_home/cubit/best_seler_books/best_seler_books_cubit.dart';
import 'package:bookly_app/features/feature_home/cubit/best_seler_books/best_seler_books_state.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/best_seller%20_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSelerBooksCubit, BestSelerBooksState>(
      builder: (context, state) {
        if (state is BestSelerBooksLoadedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BestSellerItemCard(
                      bookModel: state.books[index],
                    ),
                  );
                }),
          );
        } else if (state is BestSelerBooksErrorState) {
          return CustomErrorWidget(errMesage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
