import 'package:flutter/material.dart';

class AppThemeTextTheme {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppThemeTextTheme._();

  static const TextTheme textThemeDefault = TextTheme(
    // TITLES
    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),

    // HEADLINE
    headlineLarge: TextStyle(),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),

    // BODY
    bodyLarge: TextStyle(),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(),

    // LABEL
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),

    // DISPLAY
    displayLarge: TextStyle(),
    displayMedium: TextStyle(),
    displaySmall: TextStyle(),
  );
}
