import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light();
ThemeData darkTheme = ThemeData.dark();

class ThemeSettings with ChangeNotifier {
  bool _darkMode = false;
  bool get darkMode => _darkMode;

  toggleDarkMode() {
    _darkMode = !_darkMode;
    notifyListeners();
  }
}
