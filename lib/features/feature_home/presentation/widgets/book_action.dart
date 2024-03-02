import 'package:bookly_app/features/feature_home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/custtom_botton.dart';
import 'package:bookly_app/features/feature_home/presentation/widgets/home_item_card.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const HomeItemCard(
            imageUrl: 'https://via.placeholder.com/150',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Rudyyard jefiy',
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignmenttek: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            Expanded(
              child: CustomButton(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
                backgroundColor: Color.fromARGB(239, 255, 255, 255),
                textColor: Colors.black,
                text: '19,99 \$',
              ),
            ),
            Expanded(
              child: CustomButton(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                backgroundColor: Color.fromARGB(240, 246, 141, 84),
                textColor: Colors.white,
                text: 'Free View',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
