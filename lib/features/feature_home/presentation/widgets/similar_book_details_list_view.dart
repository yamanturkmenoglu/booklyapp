import 'package:bookly_app/features/feature_home/presentation/widgets/home_item_card.dart';
import 'package:flutter/widgets.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: HomeItemCard(
                imageUrl: 'https://via.placeholder.com/150',
              ),
            );
          }),
    );
  }
}
