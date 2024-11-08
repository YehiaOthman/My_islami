import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = 'en';

  void switchTheme(String newTheme) {
    if (newTheme == 'light') {
      currentTheme = ThemeMode.light;
    } else {
      currentTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  void switchLocale(String newLocale) {
    if (newLocale != currentLocale) {
      currentLocale = newLocale;
      notifyListeners();
    }
  }

  bool isEnglish() {
    return currentLocale == 'en';
  }
}
