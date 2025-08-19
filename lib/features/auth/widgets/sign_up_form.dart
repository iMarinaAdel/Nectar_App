import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/componant/inputs/input_text_form_field.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class SignUpForm extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onTogglePassword;

  const SignUpForm({
    super.key,
    required this.obscureText,
    required this.onTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputTextFormField(
          textLabel: "Username",
          hintText: 'marina123',
          validator: (value) =>
              (value?.isEmpty ?? true) ? "Please Enter Your Username" : null,
        ),
        const SizedBox(height: 30),
        InputTextFormField(
          textLabel: "Email",
          hintText: 'marina@gmail.com',
          validator: (value) =>
              (value?.isEmpty ?? true) ? "Please Enter Your Email" : null,
        ),
        const SizedBox(height: 30),
        InputTextFormField(
          obscureText: obscureText,
          suffixIcon: IconButton(
            onPressed: onTogglePassword,
            icon: obscureText
                ? SvgPicture.asset(AppAssets.closeEyeSvg)
                : Icon(Icons.remove_red_eye, color: AppColors.primaryColor),
          ),
          textLabel: "Password",
          hintText: 'marina1##',
          validator: (value) {
            if (value == null || value.length < 6) {
              return "Password must be at least 6 characters";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "By continuing you agree to our",
                style: TextStyle(color: AppColors.grayColor, fontSize: 14),
              ),
              WidgetSpan(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    " Terms of Service",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              TextSpan(
                text: " and ",
                style: TextStyle(color: AppColors.grayColor, fontSize: 14),
              ),
              WidgetSpan(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy.",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
