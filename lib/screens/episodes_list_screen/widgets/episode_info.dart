import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class EpisodInfo extends StatelessWidget {
  final EpisodeModel currentEpisod;

  EpisodInfo({required this.currentEpisod});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("СЕРИЯ ${currentEpisod.series}",
              style: themeTextStyles.textOverline),
          Text(currentEpisod.name ?? '',
              style: themeTextStyles.textEpisodeName),
          Text(currentEpisod.premiere.toString(),
              style: themeTextStyles.textBody2),
        ],
      ),
    );
  }


}
