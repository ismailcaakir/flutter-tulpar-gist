import 'package:flutter/material.dart';
import 'app_bar_theme.dart';
import 'bottom_navigation_bar_theme.dart';
import 'button_theme.dart';
import 'text_theme.dart';

class AppTheme {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppTheme._();

  static ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    textTheme: AppThemeTextTheme.textThemeDefault,
    bottomNavigationBarTheme:
        AppThemeBottomNavigationBarTheme.bottomNavigationBarThemeDefault,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppThemeAppBarTheme.appBarThemeDefault,
    textTheme: AppThemeTextTheme.textThemeDefault,
    bottomNavigationBarTheme:
        AppThemeBottomNavigationBarTheme.bottomNavigationBarThemeDefault,
    elevatedButtonTheme: AppThemeButtonTheme.elevatedButtonThemeDataDefault,
    textButtonTheme: AppThemeButtonTheme.textButtonThemeDataDefault,
    outlinedButtonTheme: AppThemeButtonTheme.outlinedButtonThemeDataDefault,
    buttonTheme: AppThemeButtonTheme.buttonThemeDataDefault,
  );
}
