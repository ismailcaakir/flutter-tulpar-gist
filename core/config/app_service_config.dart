import 'package:injectable/injectable.dart';

@singleton
class AppServiceConfig {
  @Named("ApiKey")
  String get apiKey => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
}
