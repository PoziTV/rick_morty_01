import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/legend_card.dart';

class HeroLegend extends StatelessWidget {
  HeroModel? currentHero;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            children: [
              LegendCard(title: "Пол", info: currentHero!.sex),
              Padding(padding: EdgeInsets.only(right: 118)),
              LegendCard(title: "Расса", info: currentHero!.bio),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 24),
            child: LegendCard(
                title: "Место Рождения", info: "Земля C-137", detailAble: true),
          ),
          LegendCard(
              title: "Местоположение",
              info: "Земля (Измерение подменны)",
              detailAble: true),
        ],
      ),
    );
  }

  HeroLegend({@required this.currentHero});
}
