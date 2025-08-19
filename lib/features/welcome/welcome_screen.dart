import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          
          Image.asset(
            AppAssets.welcome,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: [
                    Color(0xff0e172700).withValues(alpha: 0),
                    Color(0xff858585).withValues(alpha: .3),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),

                Gap(10),
                Text(
                  "Welcome \nto our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayColor,
                  ),
                ),
                Gap(10),
                AppMainButton(
                  text: "Get Started",
                  onPressed: () {
                    AppNavigation.pushReplacementTO(context, LoginScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
