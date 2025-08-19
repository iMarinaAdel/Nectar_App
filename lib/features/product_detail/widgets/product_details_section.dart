import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/product_detail/widgets/rating_stars.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Text("Product Detail",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ]),
        const Gap(10),
        ReadMoreText(
          description,
          trimLines: 2,
          colorClickableText: AppColors.primaryColor,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Show more',
          trimExpandedText: ' Show less',
          style: TextStyle(color: AppColors.grayColor, fontSize: 14),
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const Gap(20),
        Divider(color: AppColors.grayColor.withValues(alpha: .2)),
        const Gap(20),
        Row(
          children: [
            const Expanded(
              child: Text(
                "Nutritions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 40,
              height: 26,
              color: AppColors.grayColor.withValues(alpha: .4),
              child: Center(
                child: Text(
                  "100gr",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: AppColors.grayColor.withValues(alpha: 1),
                  ),
                ),
              ),
            ),
            const Gap(10),
            const Icon(Icons.arrow_back_ios_new_outlined),
          ],
        ),
        const Gap(20),
        Divider(color: AppColors.grayColor.withValues(alpha: .2)),
        const Gap(20),
        Row(
          children: const [
            Expanded(
              child: Text(
                "Review",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            RatingStars(rating: 3.5),
            Gap(10),
            Icon(Icons.arrow_back_ios_new_outlined),
          ],
        ),
        const Gap(50),
        AppMainButton(text: "Add To Basket", onPressed: () {}),
      ],
    );
  }
}
