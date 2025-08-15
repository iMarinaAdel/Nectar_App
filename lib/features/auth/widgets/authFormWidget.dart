import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AuthFormWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> fields;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final Widget bottomWidget;

  const AuthFormWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fields,
    required this.buttonText,
    required this.onButtonPressed,
    required this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.carrotSvg, width: 47, height: 55),
              ],
            ),
            const SizedBox(height: 98),
            Text(
              title,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: ColorsApp.grayColor,
              ),
            ),
            const SizedBox(height: 40),
            ...fields,
            const SizedBox(height: 64),
            AppMainButton(text: buttonText, onPressed: onButtonPressed),
            AppMainButton(text: buttonText, onPressed: onButtonPressed),
            const SizedBox(height: 25),
            bottomWidget,
          ],
        ),
      ),
    );
  }
}
