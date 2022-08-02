import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeButtonTheme {
  final AppColorConstants _appColorConstants;

  AppThemeButtonTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  ButtonThemeData getButtonThemeDataDefault(
    BuildContext context,
  ) {
    return Theme.of(context).buttonTheme.copyWith();
  }

  ElevatedButtonThemeData getElevatedButtonThemeDataDefault(
    BuildContext context,
  ) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    );
  }

  TextButtonThemeData getTextButtonThemeDataDefault(
    BuildContext context,
  ) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(),
    );
  }

  OutlinedButtonThemeData getOutlinedButtonThemeDataDefault(
    BuildContext context,
  ) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(),
    );
  }
}
