import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class AppTextTheme {
  static TextTheme textTheme = TextTheme(
    bodyLarge: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: CustomColors.textColor,
    ),
    bodyMedium: GoogleFonts.poppins(
      //default body
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: CustomColors.textColor,
    ),
    bodySmall: GoogleFonts.poppins(
      // desc kecil
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: CustomColors.textColor,
    ),
    titleLarge: GoogleFonts.poppins(
      // splash screen, header home
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: CustomColors.textColor,
    ),
    // title content bottom sheet
    titleMedium: GoogleFonts.poppins(
      fontSize: 17,
      color: CustomColors.textColor,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: CustomColors.greyBoldColor,
    ),
  );
}
