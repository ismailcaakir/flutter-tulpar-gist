import 'package:injectable/injectable.dart';
import 'app_config.dart';
import 'app_service_config.dart';

@singleton
@injectable
class AppBaseConfig {
  final AppServiceConfig _appServiceConfig;
  final AppConfig _appConfig;

  AppBaseConfig(
    this._appServiceConfig,
    this._appConfig,
  );

  AppServiceConfig get appServiceConfig => _appServiceConfig;
  AppConfig get appConfig => _appConfig;
}
