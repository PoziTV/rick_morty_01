import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:rick_morty_01/theme/color_theme.dart';

enum ThemeModes {
  LigthMode,
  DarkMode,
  BySystemMode,
  EnergySavingMode
}

class CurrentThemeMode extends ChangeNotifier {
  CurrentThemeMode({required ThemeModes themeMode})
      : _themeMode = themeMode;

  ThemeModes _themeMode;
  Color screenBackGround = themeColorPalette.ScreenBackGroundDarkTheme;

  ThemeModes get themeMode => _themeMode;

  set themeMode(ThemeModes val) {
    _themeMode = val;
    switch (val) {
      case ThemeModes.DarkMode:
        screenBackGround = themeColorPalette.ScreenBackGroundDarkTheme;
        break;

      case ThemeModes.LigthMode:
        screenBackGround = themeColorPalette.ScreenBackGroundLightTheme;
        break;

      case ThemeModes.BySystemMode:
        final platformbrightness =
            SchedulerBinding.instance?.window.platformBrightness;
        if (platformbrightness == Brightness.dark) {
          screenBackGround = themeColorPalette.ScreenBackGroundDarkTheme;
        } else {
          screenBackGround = themeColorPalette.ScreenBackGroundLightTheme;
        }
        break;

      default:
        screenBackGround = themeColorPalette.ScreenBackGroundDarkTheme;
    }

    print(val);
    print(screenBackGround);
    notifyListeners();
  }
}
