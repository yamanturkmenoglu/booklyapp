import 'package:bookly_app/core/constants/app_image_assets.dart';
import 'package:flutter/material.dart';

class SlidingWidgets extends StatelessWidget {
  const SlidingWidgets({
    super.key,
    required this.sliderAnimation,
  });

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: SlideTransition(
          position: sliderAnimation,
          child: Image.asset(
            AppImageAssets.logo,
            height: 100,
            width: 200,
          ),
        )),
        SlideTransition(
            position: sliderAnimation, child: const Text('Read free Books'))
      ],
    );
  }
}
