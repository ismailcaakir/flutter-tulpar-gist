import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  @Named("AppName")
  String get appName => 'My App Name';
}
