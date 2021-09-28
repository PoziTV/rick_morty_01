import 'package:flutter/cupertino.dart';

enum DarkThemeModes {
  DarkThemeOn,
  DarkThemeOff,
  DarkThemeBySystem,
  DarkThemeEnergySavingMode
}

class DarkThemeMode extends ChangeNotifier {
  DarkThemeMode({DarkThemeModes darkThemeMode = DarkThemeModes.DarkThemeOff})
      : _darkThemeMode = darkThemeMode;

  DarkThemeModes _darkThemeMode;

  DarkThemeModes get darkThemeMode => _darkThemeMode;

  set darkThemeMode(DarkThemeModes val) {
    _darkThemeMode = val;
    notifyListeners();
  }
}
