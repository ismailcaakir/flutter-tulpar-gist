import 'package:injectable/injectable.dart';
import 'color_constants.dart';
import 'string_constants.dart';
import 'url_constants.dart';

@injectable
@singleton
class AppBaseConstants {
  final AppColorConstants _appColorConstants;
  final AppStringConstants _appStringConstants;
  final AppUrlConstants _appUrlConstants;

  AppBaseConstants(
    this._appColorConstants,
    this._appStringConstants,
    this._appUrlConstants,
  );

  AppColorConstants get colors => _appColorConstants;
  AppStringConstants get strings => _appStringConstants;
  AppUrlConstants get urls => _appUrlConstants;
}
