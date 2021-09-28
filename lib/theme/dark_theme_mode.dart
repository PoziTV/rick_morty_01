enum DarkThemeModes {
  DarkThemeOn,
  DarkThemeOff,
  DarkThemeBySystem,
  DarkThemeEnergySavingMode
}

class DarkThemeMode {
  DarkThemeMode({this.darkThemeMode = DarkThemeModes.DarkThemeOff});

  DarkThemeModes darkThemeMode;
}
