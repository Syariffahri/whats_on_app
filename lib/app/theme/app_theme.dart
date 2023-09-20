import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';

import '../constants/app_color.dart';

class AppTheme {
  static ThemeData myTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: CustomColors.primary,
      secondary: CustomColors.primary, // scroll liquid color
      onSecondary: const Color(0xFF545454),
      error: Colors.red,
    ),
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: CustomColors.textColor,
      ),
    ),
    textTheme: AppTextTheme.textTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextTheme.textTheme.bodyMedium!.copyWith(
          color: Colors.white,
        ),
        backgroundColor: CustomColors.primary,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      labelStyle: AppTextTheme.textTheme.titleSmall,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
