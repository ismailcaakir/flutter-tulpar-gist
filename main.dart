import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app.dart';
import 'di.dart';
import 'package:sizer/sizer.dart';
import 'init.dart';
import 'ui/screens/splash_screen/splash_screen.dart';

Future<void> main() async {
  await AppInit.ensureInitializer();
  configureDependencies();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('tr', 'TR'),
        ],
        path: 'lib/locales',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future _initFuture = AppInit.startApp();

  @override
  Widget build(BuildContext context) {
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
              title: "a",
              theme: app.theme.getLightTheme(context),
              darkTheme: app.theme.getDarkTheme(context),
            );
          },
        );
      },
    );
  }
}
