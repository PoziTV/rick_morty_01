import 'dart:ui';
import 'package:rick_morty_01/theme/color_theme.dart';

Color AliveStatustoColorDecoder(int? status) {
  Color aliveColor;

  switch (status) {
    case 0:
      aliveColor = themeColorPalette.AliveGreen;
      break;
    case 1:
      aliveColor = themeColorPalette.AliveREd;
      break;
    case 2:
      aliveColor = themeColorPalette.AliveGrey;
      break;
    default:
      aliveColor = themeColorPalette.AliveGrey;
  }

  return aliveColor;
}
