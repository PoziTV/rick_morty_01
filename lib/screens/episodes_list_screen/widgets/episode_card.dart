import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/widgets/episode_info.dart';

class EpisodCard extends StatelessWidget {
  final EpisodeModel currentEpisod;

  EpisodCard({required this.currentEpisod, });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: Image.asset(currentEpisod.episodeScreen).image),
          ),
          margin: EdgeInsets.only(right: 16),
        ),
        EpisodInfo(currentEpisod: currentEpisod),
      ],
    );
  }
}
