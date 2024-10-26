import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String LanguageCode = 'en';
  bool get isDark => themeMode == ThemeMode.dark;
  String get backgroundImagName => isDark ? 'dark_bg' : 'default_bg';

  void changeTheme(ThemeMode selctedTheme) {
    themeMode = selctedTheme;
    notifyListeners();
  }

  void changeLanguag(String selctedLanguag) {
    LanguageCode = selctedLanguag;
    notifyListeners();
  }
}
