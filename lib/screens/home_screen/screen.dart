import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rick_morty_01/resources/images.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double viewPortHeight = MediaQuery.of(context).size.height;
    final double viewPortHeight_05 = viewPortHeight * 0.5;
    final double viewPortCoefficient = viewPortHeight / 816;
    final double wordRickHeight = 219;
    final double wordMortykHeight = 193;
    final double wordAndHeight = 49;
    final double pickMorty_01_Height = 218;
    final double pickRick_01_Height = 207;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  themeColorPalette.ScreenBackGround, BlendMode.lighten),
              fit: BoxFit.cover,
              image: Image.asset(
                Images.backGroundPictureStarSky,
              ).image,
            ),
          ),
        ),
        Container(
          height: viewPortHeight_05,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.27),
                Colors.black.withOpacity(0)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          top: 53.92 * viewPortCoefficient,
          child: Image.asset(
            Images.word_Rick,
            height: wordRickHeight * viewPortCoefficient,
          ),
        ),
        Positioned(
            top: 246.7 * viewPortCoefficient,
            child: Image.asset(
              Images.word_And,
              height: wordAndHeight * viewPortCoefficient,
            )),
        Positioned(
            top: 241.28 * viewPortCoefficient,
            child: Image.asset(
              Images.word_Morty,
              height: wordMortykHeight * viewPortCoefficient,
            )),
        Positioned(
          top: viewPortHeight_05 + 3.42,
          child: Image.asset(Images.pic_Rick_01),
          height: pickRick_01_Height * viewPortCoefficient,
        ),
        Positioned(
          top: viewPortHeight_05 +
              (viewPortHeight_05 - 218 * viewPortCoefficient),
          child: Image.asset(Images.pic_Morty_01),
          height: pickMorty_01_Height * viewPortCoefficient,
        ),
        Container(child: GestureDetector(onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectHerosScreen(),
              ));
        })),
      ],
    );
  }
}
