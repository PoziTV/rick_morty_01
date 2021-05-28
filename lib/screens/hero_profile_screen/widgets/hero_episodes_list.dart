import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/episode_model.dart';

import 'package:rick_morty_01/resources/variables/episodes_list.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/episode_card.dart';

class HeroEpisodesList extends StatelessWidget {
  List<EpisodeModel> currentHeroEpisodesList = [];

  HeroEpisodesList({required this.currentHeroEpisodesList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 24), //124),
      itemCount: currentHeroEpisodesList.length,
      itemBuilder: (BuildContext context, int index) =>
          EpisodCard(currentEpisod: currentHeroEpisodesList[index]),
      separatorBuilder: (BuildContext context, int index) => Container(
        height: 24,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
