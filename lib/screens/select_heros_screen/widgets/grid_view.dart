import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_block.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_event.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

class HeroesGridView extends StatelessWidget {
  final List<HeroModel>? heroesList;

  HeroesGridView({@required this.heroesList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: heroesList!.length,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: _HeroGridViewItem(heroesList![index]),
        onTap: () {
          var bloc_1 = HeroProfileBloc();
          bloc_1.add(
            HeroProfileEvent_initial(currentHero: heroesList![index]),
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroProfileScreen(
                    ),
              ));
        },
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}

_HeroGridViewItem(HeroModel heroListItem) {
  return Column(
    children: [
      CircleAvatar(
        radius: 60,
        backgroundImage: Image.asset(heroListItem.ava).image,
      ),
      Padding(padding: EdgeInsets.only(top: 18)),
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
  );
}
