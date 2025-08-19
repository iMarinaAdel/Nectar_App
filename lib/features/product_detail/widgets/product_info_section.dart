import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/cart/widget/build_quantity_button.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({
    super.key,
    required this.name,
    required this.price,
    required this.itemCount,
    required this.onIncrease,
    required this.onDecrease,
  });

  final String name;
  final String price;
  final int itemCount;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const Icon(Icons.favorite_border),
          ],
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                BuildQuantityButton(
                  icon: Icons.remove,
                  widthC: 55,
                  hightC: 55,
                  sizeI: 30,
                  onTap: onDecrease,
                ),
                const SizedBox(width: 15),
                Text("$itemCount", style: const TextStyle(fontSize: 24)),
                const SizedBox(width: 15),
                BuildQuantityButton(
                  icon: Icons.add,
                  widthC: 55,
                  hightC: 55,
                  sizeI: 30,
                  onTap: onIncrease,
                ),
              ],
            ),
            Text(
              price,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Gap(10),
        Divider(color: AppColors.grayColor.withValues(alpha: 0.2)),
      ],
    );
  }
}
