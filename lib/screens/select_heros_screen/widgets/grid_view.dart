import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

class HeroesGridView extends StatelessWidget {
  List<HeroModel>? heroesList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: GridView.builder(
        itemCount: heroesList!.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          child: _HeroGridViewItem(heroesList![index]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroProfileScreen(
                    currentHero: heroesList![index],
                    currentHeroId: index,
                  ),
                ));
            print("$index Grid Item Taped");
          },
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 192,
          crossAxisSpacing: 16,
          mainAxisSpacing: 24,
          crossAxisCount: 2,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }

  HeroesGridView({@required this.heroesList});
}

_HeroGridViewItem(HeroModel heroListItem) {
  return Column(
    children: [
      CircleAvatar(
        radius: 60,
        backgroundImage: Image.asset(heroListItem.ava).image,
      ),
      Flexible(
        child: Container(
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Flexible(
                child: Text(
                  heroListItem.aliveStatus,
                  style: themeTextStyles.textAppearanceOverline.copyWith(
                    color: heroListItem.aliveStatus == "ЖИВОЙ"
                        ? themeColorPalette.AliveGreen
                        : themeColorPalette.AliveREd,
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  heroListItem.name,
                  style: themeTextStyles.textHeroName,
                ),
              ),
              Flexible(
                child: Text(
                  "${heroListItem.bio}, ${heroListItem.sex}",
                  style: themeTextStyles.textAppearanceCaption,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
