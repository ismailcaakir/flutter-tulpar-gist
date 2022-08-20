import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeAppBarTheme {
  final AppColorConstants _appColorConstants;

  AppThemeAppBarTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  AppBarTheme getAppBarThemeDefault(
    AppBarTheme appBarTheme,
  ) {
    return appBarTheme.copyWith(
      centerTitle: false,
    );
  }
}
