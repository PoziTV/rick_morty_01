import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/alive_color_decoder.dart';
import 'package:rick_morty_01/data/alive_status_decoder.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';

class HeroInfo extends StatelessWidget {
  HeroModel? currentHero;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          currentHero!.fullName ?? '',
          style: themeTextStyles.textAppearanceHeadline4,
        ),
        Text(
          // currentHero!.status,
          AliveStatusDecoder(currentHero!.status),
          style: themeTextStyles.textAppearanceOverline.copyWith(
            color: AliveStatustoColorDecoder(currentHero!.status),
            // color: currentHero!.status == 1
            //     ? themeColorPalette.AliveGreen
            //     : themeColorPalette.AliveREd,
          ),
        ),
      ],
    );
  }

  HeroInfo({@required this.currentHero});
}
