import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/episode_info.dart';

class EpisodCard extends StatelessWidget {
  EpisodeModel? currentEpisod;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 74,
          width: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: Image.asset(currentEpisod!.episodeScreen).image),
          ),
        ),
        EpisodInfo(currentEpisod: currentEpisod),
        Container(
          width: 24,
          child: SvgPicture.asset(
            SvgIcons.AngleRightIcon,
          ),
        ),
      ],
    );
  }

  EpisodCard({this.currentEpisod});
}


