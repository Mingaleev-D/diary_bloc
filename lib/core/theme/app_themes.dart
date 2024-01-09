import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    useMaterial3: true,
    fontFamily: GoogleFonts.nunitoSans().fontFamily,
  );
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondaryColor),
    useMaterial3: true,
    fontFamily: GoogleFonts.nunitoSans().fontFamily,
  );
}
