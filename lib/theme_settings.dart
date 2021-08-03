import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData.light();
ThemeData darkTheme = ThemeData.dark();

class ThemeSettings with ChangeNotifier {
  bool _darkMode = false;
  bool get darkMode => _darkMode;
  SharedPreferences? _preferences;

  ThemeSettings() {
    _loadPrefs();
  }

  _initializePrefs() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _savePrefs() async {
    await _initializePrefs();
    _preferences?.setBool('ThemeMode', _darkMode);
  }

  _loadPrefs() async {
    await _initializePrefs();
    _darkMode = _preferences?.getBool('ThemeMode') ?? false;
    notifyListeners();
  }

  toggleDarkMode() {
    _darkMode = !_darkMode;
    _savePrefs();
    notifyListeners();
  }
}

//todo User Shared preferences to store the ThemMode data!









//SharedPreferences? _preferences;

  // ThemeSettings() {
  //   _loadThemePrefs();
  // }

  // _initializePrefs() async {
  //   if (_preferences == null) {
  //     _preferences = await SharedPreferences.getInstance();
  //   }
  // }

  // _saveThemePrefs() async {
  //   await _initializePrefs();
  //   _preferences?.setBool('ThemeKey', _darkMode);
  // }

  // _loadThemePrefs() async {
  //   await _initializePrefs();
  //   _darkMode = _preferences?.getBool('ThemeKey') ?? false;
  // }

//   toggleDarkMode() {
//     _darkMode = !_darkMode;
//     _saveThemePrefs();
//     notifyListeners();
//   }
// }
