import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get titleLarge => GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get titleMedium => GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get body =>
      GoogleFonts.poppins(color: AppColors.white, fontSize: 16);

  static TextStyle get caption =>
      GoogleFonts.poppins(color: AppColors.grey, fontSize: 13);
}
