import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

import 'package:rick_morty_01/screens/heroes_list_screen/widgets/hero_card.dart';

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
        child: HeroCard(currentHero: heroesList[index]),
        // ),
        onTap: () {
          // var bloc_1 = HeroProfileBloc();
          heroProfileBloc.add(
            HeroProfileEvent.initial(currentHero: heroesList[index]),
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
