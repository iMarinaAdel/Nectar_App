import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/explore/models/card_model.dart';

class ExploreCardWidget extends StatelessWidget {
  const ExploreCardWidget({super.key, required this.cardmodel});
  final ExploreCardModel cardmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
      decoration: BoxDecoration(
        color: cardmodel.backGroundColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: cardmodel.borderColor),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(cardmodel.image, width: 95, height: 95)),
          const SizedBox(height: 20),
          Text(
            cardmodel.catNmae,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: ColorsApp.darkColor,
            ),
          ),
        ],
      ),
    );
  }
}
