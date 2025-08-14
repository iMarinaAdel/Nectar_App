import 'package:flutter/material.dart';
import 'package:nectar_app/componant/searchBar/searchBar_widget.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/home/models/model_box.dart';
import 'package:nectar_app/features/home/widgets/home_card_widget.dart';

class BuildHomeWidget extends StatelessWidget {
  const BuildHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bestSelling = products.skip(3).toList();
    return Column(
      children: [
        SearchBarWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Exclusive Offer",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: ColorsApp.darkColor,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: ColorsApp.primaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(height: 250, width: 389, child: BuildExclusiveOfferWidget()),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Selling",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: ColorsApp.darkColor,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: ColorsApp.primaryColor,
                ),
              ),
            ),
          ],
        ),
        BuildBestSellingWidget(bestSelling: bestSelling),
      ],
    );
  }
}
