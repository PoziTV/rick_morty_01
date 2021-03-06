import 'package:flutter/material.dart';
import 'color_theme.dart';

class themeTextStyles {
  static const TextStyle textAppearanceBody1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (24 / 16),
    letterSpacing: 0.44,
    color: themeColorPalette.HintText,
  );

  static const TextStyle textAppearanceBody2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (20 / 14),
    letterSpacing: 0.25,
    color: themeColorPalette.NameWhite,
  );

  static const TextStyle textServiceBar = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (16 / 10),
    letterSpacing: 1.5,
    color: themeColorPalette.ServiceBarText,
  );

  static const TextStyle textAppearanceOverline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (16 / 10),
    letterSpacing: 1.5,
    // color: themeColorPalette.AliveGreen,
  );

  static const TextStyle textAppearanceSubtitle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (24 / 16),
    letterSpacing: 0.15,
    color: themeColorPalette.NameWhite,
  );

  static const TextStyle textAppearanceSubtitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (20 / 14),
    letterSpacing: 0.5,
    color: themeColorPalette.NameWhite,
  );

  static const TextStyle textAppearanceCaption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (16 / 12),
    letterSpacing: 0.5,
    color: themeColorPalette.AdditionalText_01,
  );

  static const TextStyle textAppearanceHeadline4 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: 1,
    letterSpacing: 0.25,
    color: themeColorPalette.NameWhite,
  );

  static const TextStyle textAppearanceHeadline6 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (28 / 20),
    letterSpacing: 0.15,
    color: themeColorPalette.NameWhite,
  );

  static const TextStyle textAppearanceButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (24 / 14),
    letterSpacing: 1.5,
    color: themeColorPalette.ServiceBarText,
  );

  static const TextStyle textDescription = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (19.5 / 13),
    letterSpacing: 0.5,
    color: themeColorPalette.NameWhite,
  );

  static TextStyle textOverline = TextStyle(
    fontSize: 10,
    // fontWeight: FontWeight.w500,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (16 / 10),
    letterSpacing: 1.5,
    color: themeColorPalette.OverLine,
  );

  static TextStyle textEpisodeName = TextStyle(
    fontSize: 16,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (24 / 16),
    letterSpacing: 0.5,
    color: themeColorPalette.NameWhite.withOpacity(0.87),
  );

  static TextStyle textBody2 = TextStyle(
    fontSize: 14,
    fontFamily: ('Roboto'),
    fontStyle: FontStyle.normal,
    height: (20 / 14),
    letterSpacing: 0.25,
    color: themeColorPalette.Body2,
  );

  static TextStyle textEpisodProfileName = TextStyle(
    fontSize: 24,
    fontFamily: ('Roboto'),
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    height: (32 / 24),
    // letterSpacing: 0.25,
    color: themeColorPalette.NameWhite,
  );

  static TextStyle textSettingsDescription = TextStyle(
    fontSize: 13,
    fontFamily: ('Roboto'),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: (20 / 13),
    letterSpacing: 0.25,
    color: themeColorPalette.NameWhite,
  );
}
