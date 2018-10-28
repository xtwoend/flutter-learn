import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'class/app_language.dart';

void main() {
    return runApp(MaterialApp(
        supportedLocales: [
            const Locale('id', 'ID'),
            const Locale('en', 'US')
        ],
        localizationsDelegates: [
            const AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
        ],
        localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
            for (Locale supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                }
            }
            return supportedLocales.first;
        },
        home: MyApp(),
        debugShowCheckedModeBanner: false,
    ));
}

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: new WelcomePage(),
            // new LoginPage()
        );
    }
}
