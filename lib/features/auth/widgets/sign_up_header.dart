import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        SvgPicture.asset(AppAssets.carrotSvg, width: 47, height: 55),
        const SizedBox(height: 98),
        const Text(
          "Sign Up",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 16),
        Text(
          "Enter your credentials to continue",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.grayColor,
          ),
        ),
      ],
    );
  }
}
