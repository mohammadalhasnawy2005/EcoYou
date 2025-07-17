import 'package:ecoyou/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Cairo",
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    headlineSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    bodyLarge: TextStyle(
      height: 1.5,
      fontSize: 16,
      color: AppColors.grey,
      fontWeight: FontWeight.bold,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    headlineSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    bodyLarge: TextStyle(
      height: 1.5,
      fontSize: 16,
      color: AppColors.grey,
      fontWeight: FontWeight.bold,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
);
