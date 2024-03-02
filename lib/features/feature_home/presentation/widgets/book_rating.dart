import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignmenttek = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignmenttek;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignmenttek,
      children: const [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
        ),
        Text(
          '4.2',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Text('(384)')
      ],
    );
  }
}
