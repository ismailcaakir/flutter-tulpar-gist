import 'package:flutter/material.dart';

class AppColorConstants {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppColorConstants._();

  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `AppConfig.appName`.
  static const Color white = Colors.white;
}
