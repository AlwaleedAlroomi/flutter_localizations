import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_locallang/page/home.dart';

import 'component/applocal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocale.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      // List all of the app's supported locales here
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (currentLang, supportLang) {
        // Check if the current device locale is supported
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportLang.first;
      },
    );
  }
}
