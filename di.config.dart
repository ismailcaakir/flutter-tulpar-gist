// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_core/firebase_core.dart' as _i13;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i15;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import 'core/app.dart' as _i20;
import 'core/config/app_config.dart' as _i4;
import 'core/config/app_service_config.dart' as _i6;
import 'core/config/base_config.dart' as _i17;
import 'core/constants/base_constants.dart' as _i18;
import 'core/constants/color_constants.dart' as _i3;
import 'core/constants/string_constants.dart' as _i7;
import 'core/constants/url_constants.dart' as _i12;
import 'core/themes/app_bar_theme.dart' as _i8;
import 'core/themes/bottom_navigation_bar_theme.dart' as _i9;
import 'core/themes/button_theme.dart' as _i10;
import 'core/themes/text_theme.dart' as _i11;
import 'core/themes/themes.dart' as _i19;
import 'di.dart' as _i21;
import 'routes/router.dart' as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppColorConstants>(_i3.AppColorConstants());
  gh.singleton<_i4.AppConfig>(_i4.AppConfig());
  gh.singleton<_i5.AppRoutes>(_i5.AppRoutes());
  gh.singleton<_i6.AppServiceConfig>(_i6.AppServiceConfig());
  gh.singleton<_i7.AppStringConstants>(_i7.AppStringConstants());
  gh.singleton<_i8.AppThemeAppBarTheme>(
      _i8.AppThemeAppBarTheme(get<_i3.AppColorConstants>()));
  gh.singleton<_i9.AppThemeBottomNavigationBarTheme>(
      _i9.AppThemeBottomNavigationBarTheme(get<_i3.AppColorConstants>()));
  gh.singleton<_i10.AppThemeButtonTheme>(
      _i10.AppThemeButtonTheme(get<_i3.AppColorConstants>()));
  gh.singleton<_i11.AppThemeTextTheme>(
      _i11.AppThemeTextTheme(get<_i3.AppColorConstants>()));
  gh.singleton<_i12.AppUrlConstants>(_i12.AppUrlConstants());
  gh.factoryAsync<_i13.FirebaseApp>(() => injectableModule.firebase);
  gh.factory<_i14.FirebaseRemoteConfig>(() => injectableModule.remoteconfig);
  gh.factory<_i15.OneSignal>(() => injectableModule.onesignal);
  await gh.factoryAsync<_i16.SharedPreferences>(() => injectableModule.prefs,
      preResolve: true);
  gh.singleton<_i17.AppBaseConfig>(
      _i17.AppBaseConfig(get<_i6.AppServiceConfig>(), get<_i4.AppConfig>()));
  gh.factory<_i18.AppBaseConstants>(() => _i18.AppBaseConstants(
      get<_i3.AppColorConstants>(),
      get<_i7.AppStringConstants>(),
      get<_i12.AppUrlConstants>()));
  gh.factory<_i19.AppTheme>(() => _i19.AppTheme(
      get<_i8.AppThemeAppBarTheme>(),
      get<_i9.AppThemeBottomNavigationBarTheme>(),
      get<_i10.AppThemeButtonTheme>(),
      get<_i11.AppThemeTextTheme>()));
  gh.factory<_i20.App>(() => _i20.App(
      get<_i17.AppBaseConfig>(),
      get<_i5.AppRoutes>(),
      get<_i19.AppTheme>(),
      get<_i18.AppBaseConstants>()));
  return get;
}

class _$InjectableModule extends _i21.InjectableModule {}
