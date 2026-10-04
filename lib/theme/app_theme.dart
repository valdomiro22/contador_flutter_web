import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    final colorScheme = ColorScheme.light(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.onPrimaryLight,

      primaryContainer: AppColors.primaryContainerLight,
      onPrimaryContainer: AppColors.onPrimaryContainerLight,

      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.onSecondaryLight,

      secondaryContainer: AppColors.secondaryContainerLight,
      onSecondaryContainer: AppColors.onSecondaryContainerLight,

      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.onTertiaryLight,

      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,

      error: AppColors.errorLight,
      onError: AppColors.onErrorLight,

      outline: AppColors.outlineLight,
      outlineVariant: AppColors.outlineVariantLight,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,

      // Equivalente ao background do Compose.
      scaffoldBackgroundColor: AppColors.backgroundLight,

      // Tema dos Cards.
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Tema da AppBar.
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        foregroundColor: colorScheme.primary,
        centerTitle: true,

        // impede a AppBar de mudar de cor ao fazer scroll
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,

        titleTextStyle: TextStyle(
          color: colorScheme.primary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        // Ícones principais da AppBar:
        // botão voltar, menu drawer, etc.
        iconTheme: IconThemeData(color: colorScheme.primary, size: 28),

        // Ícones das actions:
        // aqueles que ficam do lado direito da AppBar.
        actionsIconTheme: IconThemeData(color: colorScheme.primary, size: 28),
      ),

      // Tema dos botões principais.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.floatingButtomLight
      ),

      // Tema dos textos.
      textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
    );
  }

  static ThemeData darkTheme() {
    final colorScheme = ColorScheme.dark(
      primary: AppColors.primaryDark,
      onPrimary: AppColors.onPrimaryDark,

      primaryContainer: AppColors.primaryContainerDark,
      onPrimaryContainer: AppColors.onPrimaryContainerDark,

      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.onSecondaryDark,

      secondaryContainer: AppColors.secondaryContainerDark,
      onSecondaryContainer: AppColors.onSecondaryContainerDark,

      tertiary: AppColors.tertiaryDark,
      onTertiary: AppColors.onTertiaryDark,

      surface: AppColors.surfaceDark,
      onSurface: AppColors.onSurfaceDark,

      error: AppColors.errorDark,
      onError: AppColors.onErrorDark,

      outline: AppColors.outlineDark,
      outlineVariant: AppColors.outlineVariantDark,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,

      // Equivalente ao background do Compose.
      scaffoldBackgroundColor: AppColors.backgroundDark,

      // Tema dos Cards.
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Tema da AppBar.
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundDark,
        foregroundColor: colorScheme.onPrimary,
        centerTitle: true,

        // impede a AppBar de mudar de cor ao fazer scroll
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,

        titleTextStyle: TextStyle(
          color: colorScheme.primary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        // Ícones principais da AppBar:
        // botão voltar, menu drawer, etc.
        iconTheme: IconThemeData(color: colorScheme.primary, size: 28),

        // Ícones das actions:
        // aqueles que ficam do lado direito da AppBar.
        actionsIconTheme: IconThemeData(color: colorScheme.primary, size: 28),
      ),

      // Tema dos botões principais.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.floatingButtomDart
      ),

      // Tema dos textos.
      textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
    );
  }
}
