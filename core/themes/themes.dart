import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:noise/core/constants/color_constants.dart';
import '../../di.dart';
import 'app_bar_theme.dart';
import 'bottom_navigation_bar_theme.dart';
import 'button_theme.dart';
import 'text_theme.dart';

@injectable
class AppTheme {
  final AppThemeAppBarTheme _appBarTheme;
  final AppThemeBottomNavigationBarTheme _bottomNavigationBarTheme;
  final AppThemeButtonTheme _buttonThemeData;
  final AppThemeTextTheme _textTheme;

  AppTheme(this._appBarTheme, this._bottomNavigationBarTheme,
      this._buttonThemeData, this._textTheme);

  AppThemeAppBarTheme get appBarTheme => _appBarTheme;

  AppThemeBottomNavigationBarTheme get bottomNavigationBarTheme =>
      _bottomNavigationBarTheme;

  AppThemeButtonTheme get buttonThemeData => _buttonThemeData;

  AppThemeTextTheme get textTheme => _textTheme;

  getLightTheme() {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: getIt<AppColorConstants>().white,
      appBarTheme: appBarTheme.getAppBarThemeDefault(
        ThemeData.light().appBarTheme,
      ),
      bottomNavigationBarTheme:
          bottomNavigationBarTheme.getBottomNavigationBarTheme(
        ThemeData.light().bottomNavigationBarTheme,
      ),
      textTheme: textTheme.getTextThemeDefault(
        ThemeData.light().textTheme,
      ),
    );
  }

  getDarkTheme() {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: getIt<AppColorConstants>().black,
      appBarTheme: appBarTheme.getAppBarThemeDefault(
        ThemeData.dark().appBarTheme,
      ),
      bottomNavigationBarTheme:
          bottomNavigationBarTheme.getBottomNavigationBarTheme(
        ThemeData.light().bottomNavigationBarTheme,
      ),
      textTheme: textTheme.getTextThemeDefault(
        ThemeData.dark().textTheme,
      ),
    );
  }
}
