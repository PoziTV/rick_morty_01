import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';

class EpisodInfo extends StatelessWidget {
  EpisodeModel currentEpisod;
  EpisodInfo({required this.currentEpisod});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 82)),
            Text(
              currentEpisod.name ?? '',
              style: themeTextStyles.textEpisodProfileName,
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              'СЕРИЯ ${currentEpisod.series}',
              style: themeTextStyles.textOverline,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 36)),
            Text(
              currentEpisod.plot ?? '',
              style: themeTextStyles.textDescription,
            ),
            Padding(padding: EdgeInsets.only(top: 24)),
            Text(
              'ПРЕМЬЕРА',
              style: themeTextStyles.textAppearanceCaption.copyWith(
                color: themeColorPalette.HintText,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              currentEpisod.premiere.toString(),
              style: themeTextStyles.textAppearanceBody2,
            ),
          ],
        )
      ],
    );
  }
}
