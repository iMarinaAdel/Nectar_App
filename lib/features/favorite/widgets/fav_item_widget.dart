import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/favorite/models/fav_model.dart';

class FavItemWidget extends StatelessWidget {
  const FavItemWidget({super.key, required this.favModel});
  final FavModel favModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(favModel.image, width: 70, height: 70),
          SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                favModel.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.darkColor,
                ),
              ),
              Text(
                favModel.subTitle,
                style: TextStyle(
                  color: ColorsApp.grayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          Spacer(),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                favModel.price,
                style: TextStyle(
                  color: ColorsApp.darkColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: ColorsApp.grayColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
