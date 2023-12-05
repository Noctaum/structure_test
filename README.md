## Getting Started

<p align="center">
  <a href="https://github.com/Noctaum/structure_test">
    <img alt="structure_test" src="https://github.com/Noctaum/structure_test/blob/main/assets/images/logo.jpg" width="300" />
  </a>
</p>
<h1 align="center">
  Structure Test
</h1>

# Structure test
Project to test some flutter structure, to find out the optimal one 

## Important info
- project has written by flutter
- project support `null safety`
- project system (deploy, build, env) build to work with android studio
- env update, build, deploy build with Android Studio configurations
- info: [Android Studio configurations](https://developer.android.com/studio/run/rundebugconfig)
- run from configuration support auto reload (without press `R`)
- Android Studio configurations (further in the text just `configurations`)
- All configuration have support of config.env.json variables
- Read how to add variables to `config.env.json` (important)

## Prerequisites
- check path for ALL configurations (apply configurations)
- check path / options inside env files
- apply ios certificates / profiles to your keychain (double click on each file in `./certificates` folder)

## Installation
- run `flutter pub get`

---

## Run Project
- run dev configuration
- run stage configuration
- run prod configuration

## Run Project Commands (if configuration issues)
### Debug:
- `flutter run –flavor dev -t lib/main.dart --dart-define-from-file=config.dev.json`
- `flutter run –flavor stage -t lib/main.dart --dart-define-from-file=config.stage.json`
- `flutter run –flavor prod -t lib/main.dart --dart-define-from-file=config.prod.json`
### Profile:
- `flutter run –profile –flavor dev -t lib/main.dart --dart-define-from-file=config.dev.json`
- `flutter run –profile –flavor stage -t lib/main.dart --dart-define-from-file=config.stage.json`
- `flutter run –profile –flavor prod -t lib/main.dart --dart-define-from-file=config.prod.json`
### Release:
- `flutter run –release –flavor dev -t lib/main.dart --dart-define-from-file=config.dev.json`
- `flutter run –release –flavor stage -t lib/main.dart --dart-define-from-file=config.stage.json`
- `flutter run –release –flavor prod -t lib/main.dart --dart-define-from-file=config.prod.json`

## Run Project (from terminal without env options)
- run `flutter run` (hot reload with `press R`)

## Deploy Project
- change version in `./pubspec.yaml`: `version: 1.0.0+1`
- run one of `deploy dev` configurations
- run one of `deploy stage` configurations

## Build Project Commands (if configuration issues)
### DEV
- `flutter build apk flavor dev --dart-define-from-file=config.dev.json`
- `flutter build appbundle flavor dev --dart-define-from-file=config.dev.json`
- `flutter build ipa --release flavor dev --dart-define-from-file=config.dev.json`
- `flutter build web flavor dev --dart-define-from-file=config.dev.json`
### STAGE
- `flutter build apk flavor stage --dart-define-from-file=config.stage.json`
- `flutter build appbundle flavor stage --dart-define-from-file=config.stage.json`
- `flutter build ipa --release flavor stage --dart-define-from-file=config.stage.json`
- `flutter build web flavor stage --dart-define-from-file=config.stage.json`
### PROD
- `flutter build apk flavor prod --dart-define-from-file=config.prod.json`
- `flutter build appbundle flavor prod --dart-define-from-file=config.prod.json`
- `flutter build ipa --release flavor prod --dart-define-from-file=config.prod.json`
- `flutter build web flavor prod --dart-define-from-file=config.prod.json`

---

## Add new env (native) variable:
- add to env files (config.prod.json, config.dev.json, config.stage.json, config.example.json)
- add values to `./android/app/build.gradle` dartEnvironmentVariables
- add value to `./ios/Flutter/Defineexample-defaults.xcconfig`

## Add new env (local flutter) variable:
- add variable to `.lib/flavours`
- add `get` method to `F` class

## Build
- change version in `./pubspec.yaml`: `version: 1.0.0+1`
- run one of `build dev` configurations
- run one of `build stage` configurations
- run one of `build prod` configurations

## Build (from terminal without env options)
- change version in `./pubspec.yaml`: `version: 1.0.0+1`
- android: run `flutter build appbundle` (build bundle)
- android run: `flutter build apk --split-per-abi` (build apk)
- file will be: `/build/app/outputs/apk/release/`
- ios: run `flutter build ipa`

## Install (Beta)
- choose android device
- run `flutter install`

---

### Future plans
- add new functionality

### Secure Files
Files that should be clear / removed if project will be shared (or should be restored if you got project without this files):
- certificates (whole folder)
- android/local.properties
- android/key.properties
- android/dev_stage_key.jks
- android/app/src/main/google-services.json
- android/app/src/dev/google-services.json
- android/app/src/stage/google-services.json
- ios/config/dev/GoogleService-Info.plist
- ios/config/stage/GoogleService-Info.plist
- ios/config/prod/GoogleService-Info.plist
- ios/Flutter/Defineexample.xcconfig (if exist)
- fastline/Appfile
- fastline/.env.dev
- fastline/.env.stage
- fastline/.env.prod
- config.prod.json
- config.dev.json
- config.stage.json

