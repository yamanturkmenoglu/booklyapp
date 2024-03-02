import 'package:bookly_app/features/feature_search/presentation/widgets/search_screen_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchScreenBody()),
    );
  }
}
