import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({
    super.key,
    required this.text,
    this.onPressed,
    this.totalPrice,
  });

  final String text;
  final void Function()? onPressed;
  final double? totalPrice;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: 67,
        width: 364,
        child: Row(
          children: [
            // مسافة فاضية على الشمال عشان النص يفضل في النص
            if (totalPrice != null) const SizedBox(width: 50),

            // النص في النص بالضبط
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: ColorsApp.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            if (totalPrice != null)
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff489E67),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "\$${totalPrice!.toStringAsFixed(2)}",
                  style: const TextStyle(
                    color: ColorsApp.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
