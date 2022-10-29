import 'package:flutter/material.dart';
import 'package:weatherapp/core/style/colors.dart';

final appTheme = ThemeData(
  appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
  ),
  brightness: Brightness.light,
  primaryColor: primaryColor,
  colorScheme: const ColorScheme.light(
      primary: primaryColor
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(color: primaryColor),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
    foregroundColor: accentColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: primaryColor),
      iconColor: secondaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: secondaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      )
  ),
);