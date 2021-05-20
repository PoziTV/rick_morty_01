import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class HeroDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      child: Text(
        "Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.",
        style: themeTextStyles.textDescription,
      ),
    );
  }
}
