import 'package:ecommerce_assignment/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.themeColor,
        foregroundColor: Colors.white,
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        padding: EdgeInsets.symmetric(vertical: 16)
      )
    )
  );
}