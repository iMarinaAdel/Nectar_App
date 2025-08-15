import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/componant/inputs/input_text_form_field.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/sign_up_screen.dart';
import 'package:nectar_app/features/auth/widgets/authFormWidget.dart';
import 'package:nectar_app/features/home/pages/home_screen.dart';
import 'package:nectar_app/features/main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: AuthFormWidget(
              title: "Login",
              subtitle: "Enter your email and password",
              fields: [
                InputTextFormField(
                  textLabel: "Email",
                  hintText: 'marina@gmail.com',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Please Enter Your Email";
                    }
                    if (!isValidEmail(value!)) {
                      return "Please Enter a Valid Email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                InputTextFormField(
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? SvgPicture.asset(AppAssets.closeEyeSvg)
                        : Icon(
                            Icons.remove_red_eye,
                            color: ColorsApp.primaryColor,
                          ),
                  ),
                  textLabel: "Password",
                  hintText: 'marina13##',
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorsApp.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
              buttonText: "Log In",
              onButtonPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  AppNavigation.pushAndRemoveUntil(
                    context,
                    const MainScreen(),
                  );
                }
              },
              bottomWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      color: ColorsApp.darkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () => AppNavigation.pushReplacementTO(
                      context,
                      const SignUpScreen(),
                    ),
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: ColorsApp.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
