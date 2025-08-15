import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/componant/inputs/input_text_form_field.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';
import 'package:nectar_app/features/home/pages/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.carrotSvg,
                          width: 47,
                          height: 55,
                        ),
                      ],
                    ),
                    const SizedBox(height: 98),
                    Text(
                      "Sign Up",
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorsApp.grayColor,
                      ),
                    ),
                    const SizedBox(height: 40),
                    InputTextFormField(
                      textLabel: "Username",
                      hintText: 'marina123',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Please Enter Your Username";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    InputTextFormField(
                      textLabel: "Email",
                      hintText: 'marina@gmail.com',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Please Enter Your Email";
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
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorsApp.grayColor,
                            ),
                          ),
                          TextSpan(
                            text: " Terms of Service and Privacy Policy.",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorsApp.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    AppMainButton(
                      text: "Sign Up",
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          AppNavigation.pushAndRemoveUntil(
                            context,
                            const HomeScreen(),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: ColorsApp.darkColor,
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
                            AppNavigation.pushReplacementTO(
                              context,
                              const LoginScreen(),
                            );
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: ColorsApp.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
