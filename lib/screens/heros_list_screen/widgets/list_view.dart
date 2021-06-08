import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/heros_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

class HeroesListView extends StatelessWidget {
  SelectHeroesBloc selectHeroesBloc = SelectHeroesBloc();

  HeroesListView(/*{@required this.heroesList}*/);

  @override
  Widget build(BuildContext context) {
    final List<HeroModel>? heroesList = selectHeroesBloc.blocHeroesList;

    HeroProfileBloc heroProfileBloc = HeroProfileBloc();

    // SelectHeroesBloc selectHeroesBloc = SelectHeroesBloc();
    return ListView.separated(
      itemCount: /*heroesList!.length*/ selectHeroesBloc.heroesTotal,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: _HeroListViewItem(heroesList![index]),
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

_HeroListViewItem(HeroModel heroListItem) {
  return Row(
    children: [
      CircleAvatar(
        radius: 37,
        backgroundImage: Image.asset(heroListItem.ava).image,
      ),
      Container(
        width: 18,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heroListItem.aliveStatus,
            style: themeTextStyles.textAppearanceOverline.copyWith(
              color: heroListItem.aliveStatus == "ЖИВОЙ"
                  ? themeColorPalette.AliveGreen
                  : themeColorPalette.AliveREd,
            ),
          ),
          Text(
            heroListItem.name,
            style: themeTextStyles.textAppearanceSubtitle2,
          ),
          Text(
            "${heroListItem.bio}, ${heroListItem.sex}",
            style: themeTextStyles.textAppearanceCaption,
          ),
        ],
      ),
    ],
  );
}
