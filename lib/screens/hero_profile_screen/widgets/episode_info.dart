import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class EpisodInfo extends StatelessWidget {
  EpisodeModel? currentEpisod;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: 213,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("СЕРИЯ ${currentEpisod!.episodeNum}",
              style: themeTextStyles.textOverline),
          Text(currentEpisod!.episodeName,
              style: themeTextStyles.textEpisodeName),
          Text(currentEpisod!.episodePremierDate,
              style: themeTextStyles.textBody2),
        ],
      ),
    );
  }

  EpisodInfo({this.currentEpisod});
}