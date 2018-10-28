import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AppLocalizations {

    AppLocalizations(this.locale);

    final Locale locale;

    static AppLocalizations of(BuildContext context) {
        return Localizations.of<AppLocalizations>(context, AppLocalizations);
    }

    Map<String, String> _sentences;

    Future<bool> load() async {
        String data = await rootBundle.loadString('resources/lang/${this.locale.languageCode}.json');
        Map<String, dynamic> _result = json.decode(data);

        this._sentences = new Map();

        _result.forEach((String key, dynamic value) {
            this._sentences[key] = value.toString();
        });
        return true;
    }

    String trans(String key) {
        return this._sentences[key];
    }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
    const AppLocalizationsDelegate();

    @override
    bool isSupported(Locale locale) => ['id', 'en'].contains(locale.languageCode);

    @override
    Future<AppLocalizations> load(Locale locale) async {
        AppLocalizations localizations = new AppLocalizations(locale);
        await localizations.load();
        print("Load ${locale.languageCode}");
        return localizations;
    }

    @override
    bool shouldReload(AppLocalizationsDelegate old) => false;
}
