class AppConfig {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppConfig()` accidentally
  AppConfig._();

  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `AppConfig.appName`.
  static const String appName = 'Tulpar Example App';
}
