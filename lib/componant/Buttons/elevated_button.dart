import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(19),
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: 67,
        width: 364,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorsApp.whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
