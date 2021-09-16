import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/data/network/models/episode_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/episode_info.dart';

class EpisodCard extends StatelessWidget {
  final EpisodeModel? currentEpisod;

  EpisodCard({this.currentEpisod, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
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
            margin: EdgeInsets.only(right: 16),
          ),
          EpisodInfo(currentEpisod: currentEpisod),
          Container(
            width: 24,
            child: SvgPicture.asset(
              SvgIcons.AngleRightIcon,
            ),
          ),
        ],
      ),
      onTap: (){print("episode ${currentEpisod!.episodeNum}");},
    );
  }
}
