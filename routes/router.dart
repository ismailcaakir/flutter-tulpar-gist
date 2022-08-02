import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../core/constants/color_constants.dart';
import 'pages.dart';
import '../di.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ui/screens/onboarding_screen/onboarding_screen.dart';
import '../ui/screens/error_screen/error_screen.dart';

@singleton
@injectable
class AppRoutes {
  GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: "/",
    routes: <GoRoute>[
      GoRoute(
        path: APP_PAGE.home.routePath,
        name: APP_PAGE.home.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Page'),
            ),
            body: Center(
              child: Text("hello_world".tr(),
                  style: TextStyle(
                      fontSize: 30, color: AppColorConstants().black)),
            ),
          );
        },
      ),
      GoRoute(
        path: APP_PAGE.onboarding.routePath,
        name: APP_PAGE.onboarding.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: APP_PAGE.example.routePath,
        name: APP_PAGE.example.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return Scaffold(
            body: Center(
              child: Text("Example Page",
                  style: TextStyle(
                      fontSize: 30, color: AppColorConstants().black)),
            ),
          );
        },
        routes: <GoRoute>[
          GoRoute(
            path: "${APP_PAGE.example.routePath.replaceFirst('/', '')}/child",
            name: "${APP_PAGE.example.routePath}_child",
            builder: (BuildContext context, GoRouterState state) {
              return const ErrorScreen();
            },
          ),
        ],
      ),
    ],

    // ERROR PAGE
    // This is the page that is shown when an error occurs.
    errorBuilder: (BuildContext context, GoRouterState state) {
      print("ROUTER ERROR: ${state.error}");
      return const ErrorScreen();
    },
    redirect: (state) {
      print(state.location);
      var sharedPref = getIt<SharedPreferences>();
      if (sharedPref.getBool("onboarding_done") == null ||
          sharedPref.getBool("onboarding_done") == false) {
        sharedPref.setBool("onboarding_done", true);
        return "/onboarding";
      }
    },
  );
}
