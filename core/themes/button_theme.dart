import 'package:flutter/material.dart';

class AppThemeButtonTheme {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppThemeButtonTheme._();

  static const ButtonThemeData buttonThemeDataDefault = ButtonThemeData();

  static const ElevatedButtonThemeData elevatedButtonThemeDataDefault =
      ElevatedButtonThemeData();

  static const TextButtonThemeData textButtonThemeDataDefault =
      TextButtonThemeData();

  static const OutlinedButtonThemeData outlinedButtonThemeDataDefault =
      OutlinedButtonThemeData();
}
