import 'package:bookly_app/features/feature_home/presentation/widgets/book_action.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/book_details_appbar.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/similar_book_details_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomBookDetailsAppBar(),
                SizedBox(
                  height: 40,
                ),
                BookAction(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can also like',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SimilarBookListView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
