import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeTextTheme {
  final AppColorConstants _appColorConstants;

  AppThemeTextTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  TextTheme getTextThemeDefault(TextTheme textTheme) {
    return textTheme.copyWith(
      // TITLES
      titleLarge: textTheme.titleLarge!.copyWith(),
      titleMedium: textTheme.titleMedium!.copyWith(),
      titleSmall: textTheme.titleSmall!.copyWith(),

      // HEADLINE
      headlineLarge: textTheme.headlineLarge!.copyWith(),
      headlineMedium: textTheme.headlineMedium!.copyWith(),
      headlineSmall: textTheme.headlineSmall!.copyWith(),

      // BODY
      bodyLarge: textTheme.bodyLarge!.copyWith(),
      bodyMedium: textTheme.bodyMedium!.copyWith(),
      bodySmall: textTheme.bodySmall!.copyWith(),

      // LABEL
      labelLarge: textTheme.labelLarge!.copyWith(),
      labelMedium: textTheme.labelMedium!.copyWith(),
      labelSmall: textTheme.labelSmall!.copyWith(),

      // DISPLAY
      displayMedium: textTheme.displayMedium!.copyWith(),
      displaySmall: textTheme.displaySmall!.copyWith(),
    );
  }
}
