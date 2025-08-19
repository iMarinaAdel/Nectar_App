import 'package:flutter/material.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';
import 'package:nectar_app/features/main/main_screen.dart';

class SignUpFooter extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SignUpFooter({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppMainButton(
          text: "Sign Up",
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              AppNavigation.pushAndRemoveUntil(context, const MainScreen());
            }
          },
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account? ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                AppNavigation.pushReplacementTO(context, const LoginScreen());
              },
              child: Text(
                " Login",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
