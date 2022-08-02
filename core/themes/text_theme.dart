import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../constants/color_constants.dart';

@singleton
@injectable
class AppThemeTextTheme {
  final AppColorConstants _appColorConstants;

  AppThemeTextTheme(this._appColorConstants);

  AppColorConstants get appColorConstants => _appColorConstants;

  TextTheme getTextThemeDefault(BuildContext context) {
    return Theme.of(context).textTheme.copyWith(
          // TITLES
          titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(),
          titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(),
          titleSmall: Theme.of(context).textTheme.titleSmall!.copyWith(),

          // HEADLINE
          headlineLarge: Theme.of(context).textTheme.headlineLarge!.copyWith(),
          headlineMedium:
              Theme.of(context).textTheme.headlineMedium!.copyWith(),
          headlineSmall: Theme.of(context).textTheme.headlineSmall!.copyWith(),

          // BODY
          bodyLarge: Theme.of(context).textTheme.bodyLarge!.copyWith(),
          bodyMedium: Theme.of(context).textTheme.bodyMedium!.copyWith(),
          bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(),

          // LABEL
          labelLarge: Theme.of(context).textTheme.labelLarge!.copyWith(),
          labelMedium: Theme.of(context).textTheme.labelMedium!.copyWith(),
          labelSmall: Theme.of(context).textTheme.labelSmall!.copyWith(),

          // DISPLAY
          displayLarge: Theme.of(context).textTheme.displayLarge!.copyWith(),
          displayMedium: Theme.of(context).textTheme.displayMedium!.copyWith(),
          displaySmall: Theme.of(context).textTheme.displaySmall!.copyWith(),
        );
  }
}
