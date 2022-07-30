import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'core/themes/themes.dart';
import 'init.dart';
import 'routes/routes.dart';
import 'ui/screens/splash_screen/splash_screen.dart';

Future<void> main() async {
  await Init.ensureInitializer();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('tr', 'TR'),
      ],
      path: 'lib/locales',
      fallbackLocale: const Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future _initFuture = Init.startApp();

  @override
  Widget build(BuildContext context) {
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
                  AppRoutes.router.routeInformationProvider,
              routeInformationParser: AppRoutes.router.routeInformationParser,
              routerDelegate: AppRoutes.router.routerDelegate,
              title: "asd",
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
            );
          },
        );
      },
    );
  }
}
