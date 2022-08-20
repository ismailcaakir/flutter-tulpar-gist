import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app.dart';
import 'di.dart';
import 'package:sizer/sizer.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/services/storage/hive_storage_service.dart';
import 'core/services/storage/storage_service.dart';
import 'core/services/storage/storage_service_provider.dart';
import 'init.dart';
import 'ui/screens/splash_screen/splash_screen.dart';

Future<void> main() async {
  await AppInit.ensureInitializer();
  configureDependencies();
  // Hive-specific initialization
  await Hive.initFlutter();
  final StorageService initializedStorageService = HiveStorageService();
  await initializedStorageService.init();
  runApp(
    ProviderScope(
      overrides: [
        storageServiceProvider.overrideWithValue(initializedStorageService),
      ],
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('tr', 'TR'),
        ],
        path: 'assets/locales',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final Future _initFuture = AppInit.startApp();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    App app = getIt<App>();

    return Sizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return FutureBuilder<dynamic>(
          future: _initFuture,
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const SplashScreen();
            }
            return MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routeInformationProvider:
                  app.routes.router.routeInformationProvider,
              routeInformationParser: app.routes.router.routeInformationParser,
              routerDelegate: app.routes.router.routerDelegate,
              title: "Tulpar Example App",
              themeMode: ThemeMode.light,
              theme: app.theme.getLightTheme(),
              darkTheme: app.theme.getDarkTheme(),
            );
          },
        );
      },
    );
  }
}
