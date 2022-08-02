// Create enum to represent different routes
// ignore: camel_case_types
enum APP_PAGE {
  home,
  onboarding,
  example,
}

extension AppPageExtension on APP_PAGE {
  Map<APP_PAGE, Map<String, String>> get routes {
    return {
      APP_PAGE.home: {
        "path": "/",
        "name": "home",
      },
      APP_PAGE.onboarding: {
        "path": "/onboarding",
        "name": "onboarding",
      },
      APP_PAGE.example: {
        "path": "/example",
        "name": "example",
      },
    };
  }

  // create path for routes
  String get routePath {
    return routes[this]
            ?.entries
            .firstWhere((element) => element.key == "path")
            .value ??
        '/';
  }

  String get routeName {
    return routes[this]
            ?.entries
            .firstWhere((element) => element.key == "name")
            .value ??
        'home';
  }
}
