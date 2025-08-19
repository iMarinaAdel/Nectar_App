import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:lottie/lottie.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/main/main_screen.dart';

class OrderAccepdetScreen extends StatelessWidget {
  const OrderAccepdetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Lottie.asset(
              'assets/images/shopping-done.json',
              width: 400,
              height: 400,
            ),
            Text(
              textAlign: TextAlign.center,
              "Your Order \nhas been accepted",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.darkColor,
              ),
            ),
            Gap(20),
            Text(
              textAlign: TextAlign.center,
              "Your items has been placcd and is on it’s way to being processed",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grayColor,
              ),
            ),
            Gap(40),
            AppMainButton(
              text: "Back To Home",
              onPressed: () {
                AppNavigation.pushAndRemoveUntil(context, MainScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
