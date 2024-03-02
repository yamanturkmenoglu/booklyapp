import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMesage});
  final String errMesage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMesage,
      style: const TextStyle(fontSize: 18),
    );
  }
}
