// This file contain AppConfig class
// AppConfig show which env variable should be defined
// AppConfig child classes contain only flutter (not native) variables
// This class uses to avoid too long --dart-define run commands

enum Flavor {
  DEV,
  STAGE,
  PROD,
}

abstract class AppConfig {
  String variable = 'example';
}

class DEV implements AppConfig {
  @override
  String variable = 'dev';
}

class STAGE implements AppConfig {
  @override
  String variable = 'stage';
}

class PROD implements AppConfig {
  @override
  String variable = 'prod';
}

class F {
  static Flavor? appFlavor;
  static AppConfig? config;
  // also you could parse --dart-define variables here
  // in case to keep all variables in one place
  static const flavour =
      String.fromEnvironment('ENV_FLUTTER_ENV_MARKER', defaultValue: 'dev');

  static String get variable => config?.variable ?? '';
}
