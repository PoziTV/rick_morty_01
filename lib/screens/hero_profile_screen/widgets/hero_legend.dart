import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/legend_card.dart';

class HeroLegend extends StatelessWidget {
  final HeroModel? currentHero;

  HeroLegend({@required this.currentHero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: LegendCard(
                title: "Пол",
                info: currentHero!.sex,
              )),
              Expanded(
                  child: LegendCard(
                title: "Расса",
                info: currentHero!.bio,
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          LegendCard(
            title: "Место Рождения",
            info: "Земля C-137",
            detailAble: true,
            onTap: () {
              print("LegendCard");
            },
          ),
          const SizedBox(
            height: 20,
          ),
          LegendCard(
            title: "Местоположение",
            info: "Земля (Измерение подменны)",
            detailAble: true,
            onTap: () {
              print("LegendCard");
            },
          ),
        ],
      ),
    );
  }
}
