import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData lighttheme = ThemeData(
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.whiteColor,
    ),
    scaffoldBackgroundColor: AppColors.whiteColor,
    hintColor: AppColors.grayColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,

      selectionHandleColor: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.grayColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.redColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}
