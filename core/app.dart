import 'package:injectable/injectable.dart';
import 'constants/base_constants.dart';
import 'config/base_config.dart';
import 'themes/themes.dart';
import '../routes/router.dart';

@injectable
class App {
  final AppBaseConfig _appConfig;
  final AppBaseConstants _appBaseConstants;
  final AppRoutes _appRoutes;
  final AppTheme _appTheme;

  App(
    this._appConfig,
    this._appRoutes,
    this._appTheme,
    this._appBaseConstants,
  );

  AppBaseConfig get config => _appConfig;
  AppBaseConstants get constants => _appBaseConstants;
  AppRoutes get routes => _appRoutes;
  AppTheme get theme => _appTheme;
}
