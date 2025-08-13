import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData lighttheme = ThemeData(
    hintColor: ColorsApp.grayColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsApp.primaryColor,

      selectionHandleColor: ColorsApp.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorsApp.grayColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorsApp.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorsApp.redColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}
