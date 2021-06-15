import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/episode_model.dart';
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
            Padding(padding: EdgeInsets.only(top: 34)),
            Text(
              currentEpisod.episodeName,
              style: themeTextStyles.textEpisodProfileName,
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              'СЕРИЯ ${currentEpisod.episodeNum}',
              style: themeTextStyles.textAppearanceCaption,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 32)),
            Text(
              currentEpisod.episodeDesc,
              style: themeTextStyles.textDescription,
            ),
            Padding(padding: EdgeInsets.only(top: 36)),
            Text(
              'ПРЕМЬЕРА',
              style: themeTextStyles.textDescription,
            ),
            Text(
              currentEpisod.episodePremierDate,
              style: themeTextStyles.textDescription,
            ),
          ],
        )
      ],
    );
  }
}
