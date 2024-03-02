import 'package:bookly_app/features/feature_home/presentation/widgets/book_datelis_body.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
