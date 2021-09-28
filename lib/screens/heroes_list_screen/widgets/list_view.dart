import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/alive_color_decoder.dart';
import 'package:rick_morty_01/data/alive_status_decoder.dart';
import 'package:rick_morty_01/data/gender_decoder.dart';

import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

class HeroesListView extends StatelessWidget {
  SelectHeroesBloc selectHeroesBloc = SelectHeroesBloc();

  HeroesListView(/*{@required this.heroesList}*/);

  @override
  Widget build(BuildContext context) {
    final List<HeroModel> heroesList = selectHeroesBloc.blocHeroesList;
    // print('length: ${heroesList!.length}');

    HeroProfileBloc heroProfileBloc = HeroProfileBloc();

    // SelectHeroesBloc selectHeroesBloc = SelectHeroesBloc();
    return ListView.separated(
      itemCount: heroesList.length /*selectHeroesBloc.heroesTotal*/,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: HeroListViewCard(currentHero: heroesList[index]),
        // ),
        onTap: () {
          // var bloc_1 = HeroProfileBloc();
          heroProfileBloc.add(
            HeroProfileEvent.initial(currentHeroId: heroesList[index].id),
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroProfileScreen(),
              ));
        },
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => Container(
        height: 24,
      ),
    );
  }
}

class HeroListViewCard extends StatelessWidget {
  final HeroModel currentHero;

  HeroListViewCard({required this.currentHero});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 37,
          backgroundImage: Image.network(currentHero.imageName).image, //.asset(currentHero.imageName).image,
        ),
        Container(
          width: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AliveStatusDecoder(currentHero.status),
              // currentHero.status.toString(),
              style: themeTextStyles.textAppearanceOverline.copyWith(

                color: AliveStatustoColorDecoder(currentHero.status),
                // currentHero.status == 1
                //     ? themeColorPalette.AliveGreen
                //     : themeColorPalette.AliveREd,
              ),
            ),
            Text(
              currentHero.fullName ?? '',
              style: themeTextStyles.textAppearanceSubtitle2,
            ),
            Text(
              // "${currentHero.race}, ${currentHero.gender}",
              "${currentHero.race}, ${GenderDecoder(currentHero.gender)}",
              style: themeTextStyles.textAppearanceCaption,
            ),
          ],
        ),
      ],
    );
  }
}