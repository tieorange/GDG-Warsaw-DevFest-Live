import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/simple_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_logging/super_logging.dart';

import 'config/config_page.dart';

Future<void> main() async {
  // If you're running an application and need to access the binary messenger before `runApp()`
// has been called (for example, during plugin initialization), then you need to explicitly
// call the `WidgetsFlutterBinding.ensureInitialized()` first.
// If you're running a test, you can call the `TestWidgetsFlutterBinding.ensureInitialized()`
//  as the first line in your test's `main()` method to initialize the binding.)

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // * Get Shared Preference Instance for whole app
  Devfest.prefs = await SharedPreferences.getInstance();

  //* To check the app is running in debug and set some variables for that
  Devfest.checkDebug();

  //* Time travel debugging to check app states
  BlocSupervisor.delegate = SimpleBlocDelegate();

  // * Set flavor for your app. For eg - MOCK for offline, REST for some random server calls to your backend, FIREBASE for firebase calls
  //* Set DataMode.DART to use Dart hardcoded data and DataMode.JSON to use json file for hardcoded data.
  Injector.configure(Flavor.MOCK, DataMode.JSON);

  await SuperLogging.init(
      sentryDsn: "https://be576d4240e341d99972ae968672312c@sentry.io/1845078",
      considerDebugMode: true,
      sentryAutoRetryDelay: Duration(seconds: 5),
      getCurrentUser: (deviceInfo) async {
        return User(
          username: "DEFAULT_NAME",
          extras: deviceInfo, // contains valuable info like device manufacturer, model etc.
        );
      },
      run: () {
        runApp(ConfigPage());
      });
}
