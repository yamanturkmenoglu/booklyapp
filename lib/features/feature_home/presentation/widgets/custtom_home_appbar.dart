import 'package:bookly_app/core/constants/app_image_assets.dart';
import 'package:flutter/material.dart';

class CusttomAppBar extends StatelessWidget {
  const CusttomAppBar({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50),
      child: Row(
        children: [
          Image.asset(
            AppImageAssets.logo,
            height: 25,
          ),
          const Spacer(),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
    );
  }
}
