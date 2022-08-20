import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeBottomNavigationBarTheme {
  final AppColorConstants _appColorConstants;

  AppThemeBottomNavigationBarTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  BottomNavigationBarThemeData getBottomNavigationBarTheme(
    BottomNavigationBarThemeData bottomNavigationBarTheme,
  ) {
    return bottomNavigationBarTheme.copyWith();
  }
}
