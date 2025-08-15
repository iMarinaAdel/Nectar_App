import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class BuildQuantityButton extends StatelessWidget {
  const BuildQuantityButton({super.key, required this.icon, this.itemCount, this.onTap});
final int? itemCount;
final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final bool isAdd = icon == Icons.add;

    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
      
          border: Border.all(color: ColorsApp.grayColor.withValues(alpha: .3)),
        ),
        child: Icon(
          icon,
          color: isAdd ? Colors.green : ColorsApp.grayColor,
          size: 24,
        ),
      ),
    );
  }
}
