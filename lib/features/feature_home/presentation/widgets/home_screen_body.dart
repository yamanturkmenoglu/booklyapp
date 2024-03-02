import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/core/router/app_router.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/custtom_home_appbar.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/home_listview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
   
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CusttomAppBar(
                onPressed: () {
                  context.push(AppRouter.kSearchView);
                },
              ),
              const HomeBookFeaturedListView(),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Best Seller',
                  style: Style.mediumTitle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
