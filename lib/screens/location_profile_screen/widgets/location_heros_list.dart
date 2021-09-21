import 'package:flutter/material.dart';

import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/screens/location_profile_screen/widgets/location_hero_card.dart';

class LocationHerosList extends StatelessWidget {
  List<HeroModel> currentLocationHerosList = [];

  LocationHerosList({required this.currentLocationHerosList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 24),
      itemCount: currentLocationHerosList.length,
      itemBuilder: (BuildContext context, int index) =>
          HeroCard(currentHero: currentLocationHerosList[index]),
      separatorBuilder: (BuildContext context, int index) => Container(
        height: 24,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
