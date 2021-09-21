import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class EpisodInfo extends StatelessWidget {
  final EpisodeModel? currentEpisod;

  EpisodInfo({this.currentEpisod});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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


}
