import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating; // قيمة التقييم مثلاً 3.5 من 5

  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return const Icon(Icons.star, color: Colors.amber); // نجمة كاملة
        } else if (index < rating) {
          return const Icon(Icons.star_half, color: Colors.amber); // نص نجمة
        } else {
          return const Icon(Icons.star_border, color: Colors.amber); // نجمة فاضية
        }
      }),
    );
  }
}
