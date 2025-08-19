import 'package:flutter/material.dart';

class ProductImageHeader extends StatelessWidget {
  const ProductImageHeader({super.key, required this.image, required this.tag});
  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Hero(tag: tag, child: Image.asset(image)),
    );
  }
}
