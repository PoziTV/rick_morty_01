import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

class HeroesListView extends StatelessWidget {
  List<HeroModel>? heroesList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: ListView.separated(
        itemCount: heroesList!.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          child: _HeroListViewItem(heroesList![index]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroProfileScreen(
                    currentHero: heroesList![index],
                    currentHeroId: index,
                  ),
                ));
          },
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) => Container(
          height: 24,
        ),
      ),
    );
  }

  HeroesListView({@required this.heroesList});
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
            style: themeTextStyles.textHeroName,
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
