// ignore_for_file: file_names

import 'package:bookly_app/core/router/app_router.dart';
import 'package:bookly_app/features/feature_home/data/model/bookmodel.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/home_item_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemCard extends StatelessWidget {
  const BestSellerItemCard({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              HomeItemCard(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      bookModel.volumeInfo.authors!.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Text(
                          'free',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        BookRating()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
