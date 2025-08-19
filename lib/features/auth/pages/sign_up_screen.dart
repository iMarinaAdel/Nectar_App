import 'package:flutter/material.dart';
import 'package:nectar_app/features/auth/widgets/sign_up_footer.dart';
import 'package:nectar_app/features/auth/widgets/sign_up_form.dart';
import 'package:nectar_app/features/auth/widgets/sign_up_header.dart';

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
                    const SignUpHeader(),
                    const SizedBox(height: 40),
                    SignUpForm(
                      obscureText: obscureText,
                      onTogglePassword: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    SignUpFooter(formKey: formKey),
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
