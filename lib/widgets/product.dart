import 'package:flutter/material.dart';
import 'package:friday/utils/colors.dart';
import 'package:friday/utils/textstyles.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.img,
      required this.subtitle,
      required this.title, required this.color});
  final String img;
  final String title;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 169,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: secblackColor),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset('assets/images/$img.png'),
          const SizedBox(height: 16),
          Text(
            title,
            style: ftextStyle(17, whiteColor, FontWeight.w600),
          ),
          Text(
            subtitle,
            style: ftextStyle(12, color, FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
