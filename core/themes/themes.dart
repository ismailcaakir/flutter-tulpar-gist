import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
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

  getLightTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme.getAppBarThemeDefault(context),
      textTheme: textTheme.getTextThemeDefault(context),
      bottomNavigationBarTheme:
          bottomNavigationBarTheme.getBottomNavigationBarTheme(context),
      elevatedButtonTheme:
          buttonThemeData.getElevatedButtonThemeDataDefault(context),
      textButtonTheme: buttonThemeData.getTextButtonThemeDataDefault(context),
      outlinedButtonTheme:
          buttonThemeData.getOutlinedButtonThemeDataDefault(context),
      buttonTheme: buttonThemeData.getButtonThemeDataDefault(context),
    );
  }

  getDarkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme.getAppBarThemeDefault(context),
      textTheme: textTheme.getTextThemeDefault(context),
      bottomNavigationBarTheme:
          bottomNavigationBarTheme.getBottomNavigationBarTheme(context),
      elevatedButtonTheme:
          buttonThemeData.getElevatedButtonThemeDataDefault(context),
      textButtonTheme: buttonThemeData.getTextButtonThemeDataDefault(context),
      outlinedButtonTheme:
          buttonThemeData.getOutlinedButtonThemeDataDefault(context),
      buttonTheme: buttonThemeData.getButtonThemeDataDefault(context),
    );
  }
}
