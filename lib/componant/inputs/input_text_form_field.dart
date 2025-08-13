import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class InputTextFormField extends StatelessWidget {
  const InputTextFormField({
    super.key,
    required this.textLabel,
    this.suffixIcon,
    this.preffixIcon,
    this.onchange,
    required this.hintText, this.validator, this.obscureText=false,
  });
  final String textLabel;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final void Function(String)? onchange;
  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
     obscureText: obscureText,
      validator: validator,
      onChanged: onchange,
      decoration: InputDecoration(
        hint: Text(
          hintText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: ColorsApp.darkColor,
            fontSize: 18,
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: preffixIcon,
        label: Text(
          textLabel,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: ColorsApp.grayColor,
          ),
        ),
      ),
    );
  }
}
