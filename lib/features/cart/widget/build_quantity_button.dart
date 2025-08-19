import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class BuildQuantityButton extends StatelessWidget {
  const BuildQuantityButton({
    super.key,
    required this.icon,
    this.itemCount,
    this.onTap, this.widthC, this.hightC, this.sizeI,
    
  });
  final int? itemCount;
  final void Function()? onTap;
  final IconData icon;
  final double? widthC ;
  final double? hightC ;
  final double? sizeI;
  @override
  Widget build(BuildContext context) {
    final bool isAdd = icon == Icons.add;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthC?? 45,
        height: hightC?? 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

          border: Border.all(color: AppColors.grayColor.withValues(alpha: .3)),
        ),
        child: Icon(
          icon,
          color: isAdd ? Colors.green : AppColors.grayColor,
          size: sizeI??24,
        ),
      ),
    );
  }
}
