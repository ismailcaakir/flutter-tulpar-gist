import 'package:flutter/material.dart';
import 'app_bar_theme.dart';
import 'bottom_navigation_bar_theme.dart';
import 'button_theme.dart';
import 'text_theme.dart';

class AppTheme {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppTheme._();

  static getLightTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppThemeAppBarTheme.appBarThemeDefault,
      textTheme: AppThemeTextTheme.getTextThemeDefault(context),
      bottomNavigationBarTheme:
          AppThemeBottomNavigationBarTheme.bottomNavigationBarThemeDefault,
      elevatedButtonTheme: AppThemeButtonTheme.elevatedButtonThemeDataDefault,
      textButtonTheme: AppThemeButtonTheme.textButtonThemeDataDefault,
      outlinedButtonTheme: AppThemeButtonTheme.outlinedButtonThemeDataDefault,
      buttonTheme: AppThemeButtonTheme.buttonThemeDataDefault,
    );
  }

  static getDarkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppThemeAppBarTheme.appBarThemeDefault,
      textTheme: AppThemeTextTheme.getTextThemeDefault(context),
      bottomNavigationBarTheme:
          AppThemeBottomNavigationBarTheme.bottomNavigationBarThemeDefault,
      elevatedButtonTheme: AppThemeButtonTheme.elevatedButtonThemeDataDefault,
      textButtonTheme: AppThemeButtonTheme.textButtonThemeDataDefault,
      outlinedButtonTheme: AppThemeButtonTheme.outlinedButtonThemeDataDefault,
      buttonTheme: AppThemeButtonTheme.buttonThemeDataDefault,
    );
  }
}
