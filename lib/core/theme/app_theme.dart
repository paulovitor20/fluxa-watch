import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData get dark {
    const primary = AppColors.primary;

    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.dark,

      scaffoldBackgroundColor: AppColors.background,

      primaryColor: primary,

      colorScheme: const ColorScheme.dark(
        primary: primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
      ),

      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.background,
        foregroundColor: Colors.white,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.background,

        indicatorColor: primary.withValues(alpha: 0.20),

        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          return TextStyle(
            color: states.contains(WidgetState.selected)
                ? Colors.white
                : Colors.grey,
            fontWeight: FontWeight.w600,
          );
        }),

        iconTheme: WidgetStateProperty.resolveWith((states) {
          return IconThemeData(
            color: states.contains(WidgetState.selected)
                ? primary
                : Colors.grey,
            size: 26,
          );
        }),
      ),

      cardTheme: const CardThemeData(color: AppColors.surface, elevation: 0),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primary, width: 2),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
