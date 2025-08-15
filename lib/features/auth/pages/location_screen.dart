import 'package:flutter/material.dart';
import 'package:nectar_app/componant/Buttons/main_buttons.dart';
import 'package:nectar_app/componant/inputs/input_text_form_field.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final formKey = GlobalKey<FormState>();

  bool isValidLocation(String location) {
    final regex = RegExp(r"^[a-zA-Z\s,]+$");
    return regex.hasMatch(location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.locationPng),
                    const SizedBox(height: 40),
                    const Text(
                      "Select Your Location",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Switch on your location to stay in tune with what’s happening in your area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsApp.grayColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 160),
                    InputTextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Please Enter Your Location";
                        }
                        if (!isValidLocation(value!)) {
                          return "Please Enter a Valid Location Name";
                        }
                        return null;
                      },
                      textLabel: 'Location',
                      hintText: 'Cairo, Egypt',
                    ),
                    const SizedBox(height: 78),
                    MainButtons(
                      text: "Submit",
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          AppNavigation.pushTO(context, const LoginScreen());
                        }
                      },
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
