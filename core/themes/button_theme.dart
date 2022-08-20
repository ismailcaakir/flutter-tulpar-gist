import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeButtonTheme {
  final AppColorConstants _appColorConstants;

  AppThemeButtonTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  getElevatedButtonThemeDataDefault(
    ElevatedButtonThemeData elevatedButtonTheme,
  ) {
    return elevatedButtonTheme.style?.copyWith(
      backgroundColor: MaterialStateProperty.all(Colors.red),
      shadowColor: MaterialStateProperty.all(Colors.red),
    );
  }

  TextButtonThemeData getTextButtonThemeDataDefault() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(),
    );
  }

  OutlinedButtonThemeData getOutlinedButtonThemeDataDefault() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(),
    );
  }
}
