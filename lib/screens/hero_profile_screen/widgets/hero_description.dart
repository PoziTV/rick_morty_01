import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class HeroDescription extends StatelessWidget {
  final HeroModel? currentHero;
  HeroDescription({required this.currentHero});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      child: Text(
        currentHero!.description,
        style: themeTextStyles.textDescription,
      ),
    );
  }
}
