import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_info.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_description.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_legend.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_episodes_list.dart';
import 'dart:ui';

class HeroProfileScreen extends StatelessWidget {
  final HeroModel? currentHero;
  final int? currentHeroId;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        color: themeColorPalette.ScreenBackGround,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 218,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(currentHero!.ava),
                        ),
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: FloatingActionButton(
                        child: SvgPicture.asset(SvgIcons.ArrowBack),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        backgroundColor: themeColorPalette.ScreenBackGround,
                      ),
                      width: 48,
                      top: 54,
                      left: 24,
                    ),
                    Positioned(
                        top: 138,
                        child: CircleAvatar(
                          radius: 83,
                          backgroundColor: themeColorPalette.ScreenBackGround,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(currentHero!.ava),
                            radius: 73,
                          ),
                        ))
                  ]),
              Container(
                margin: EdgeInsets.only(top: 90),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: [
                  HeroInfo(currentHero: currentHero),
                  HeroDescription(),
                  HeroLegend(currentHero: currentHero),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 36),
                    height: 2,
                    color: themeColorPalette.SearchBarBackGround,
                  ),
                  HeroEpisodesList(currentHero: currentHero),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  HeroProfileScreen({@required this.currentHero, @required this.currentHeroId});
}
