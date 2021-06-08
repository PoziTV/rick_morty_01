import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';

class HeroInfo extends StatelessWidget {
  HeroModel? currentHero;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          currentHero!.name,
          style: themeTextStyles.textAppearanceHeadline4,
        ),
        Text(
          currentHero!.aliveStatus,
          style: themeTextStyles.textAppearanceOverline.copyWith(
            color: currentHero!.aliveStatus == "ЖИВОЙ"
                ? themeColorPalette.AliveGreen
                : themeColorPalette.AliveREd,
          ),
        ),
      ],
    );
  }

  HeroInfo({@required this.currentHero});
}