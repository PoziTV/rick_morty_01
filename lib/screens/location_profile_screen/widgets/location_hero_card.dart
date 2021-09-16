import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/data/network/models/hero_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';

import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class HeroCard extends StatelessWidget {
  final HeroModel currentHero;

  HeroCard({required this.currentHero});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: Image.asset(currentHero.ava).image,
          ),
          Container(
            width: 18,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentHero.aliveStatus,
                  style: themeTextStyles.textAppearanceOverline.copyWith(
                    color: currentHero.aliveStatus == "ЖИВОЙ"
                        ? themeColorPalette.AliveGreen
                        : themeColorPalette.AliveREd,
                  ),
                ),
                Text(
                  currentHero.name,
                  style: themeTextStyles.textAppearanceSubtitle2,
                ),
                Text(
                  "${currentHero.bio}, ${currentHero.sex}",
                  style: themeTextStyles.textAppearanceCaption,
                ),
              ],
            ),
          ),
          Container(
            width: 24,
            child: SvgPicture.asset(
              SvgIcons.AngleRightIcon,
            ),
          ),
        ],
      ),
      onTap: (){},
    );
  }
}
