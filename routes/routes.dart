import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/constants/color_constants.dart';
import '../ui/screens/error_screen/error_screen.dart';

class AppRoutes {
  AppRoutes._();

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: "home",
        builder: (BuildContext context, GoRouterState state) {
          return Scaffold(
            body: Center(
              child: Text("hello_world".tr(),
                  style: const TextStyle(
                      fontSize: 30, color: AppColorConstants.black)),
            ),
          );
        },
      ),
      GoRoute(
        path: '/example',
        name: "example",
        builder: (BuildContext context, GoRouterState state) {
          return const Scaffold(
            body: Center(
              child: Text("Example Page",
                  style:
                      TextStyle(fontSize: 30, color: AppColorConstants.black)),
            ),
          );
        },
      ),
    ],

    // ERROR PAGE
    // This is the page that is shown when an error occurs.
    errorBuilder: (BuildContext context, GoRouterState state) {
      return const ErrorScreen();
    },
  );
}
