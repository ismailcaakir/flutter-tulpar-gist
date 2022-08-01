import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Init {
  Init._();

  static Future<String?> startApp() async {
    return Future.delayed(const Duration(seconds: 2), () => "/");
  }

  /**
   * This method is used to ensure that the initializer is called.
   */
  static Future<void> ensureInitializer() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
