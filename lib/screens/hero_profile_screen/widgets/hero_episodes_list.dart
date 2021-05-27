import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/variables/episodes_list.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/episode_card.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class HeroEpisodesList extends StatelessWidget {
  final HeroModel? currentHero;

  HeroEpisodesList({@required this.currentHero});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 24), //124),
      itemCount: EpisodesList.length,
      itemBuilder: (BuildContext context, int index) =>
          EpisodCard(currentEpisod: EpisodesList[index]),
      separatorBuilder: (BuildContext context, int index) => Container(
        height: 24,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
