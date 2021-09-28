import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_description.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_episodes_list.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_info.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_legend.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class StateDataToWidget extends StatelessWidget {
  HeroProfileStateData state;
  BuildContext initialContext;

  StateDataToWidget({required this.state, required this.initialContext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: FloatingActionButton(
            child: SvgPicture.asset(SvgIcons.ArrowBack),
            onPressed: () {
              Navigator.pop(initialContext);
            },
            backgroundColor: themeColorPalette.ScreenBackGround,
          ),
        ),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: themeColorPalette.ScreenBackGround,
      body: SingleChildScrollView(
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
                        image: Image.network(state.currentHero.imageName).image,
                            // AssetImage(state.currentHero.imageName),
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
                      top: 138,
                      child: CircleAvatar(
                        radius: 83,
                        backgroundColor: themeColorPalette.ScreenBackGround,
                        child: CircleAvatar(
                          backgroundImage: Image.network(state.currentHero.imageName).image,
                          // AssetImage(state.currentHero.imageName),
                          radius: 73,
                        ),
                      ))
                ]),
            Container(
              margin: EdgeInsets.only(
                top: 90,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                HeroInfo(currentHero: state.currentHero),
                HeroDescription(currentHero: state.currentHero),
                HeroLegend(currentHero: state.currentHero),
                Divider(
                  thickness: 2,
                  height: 72,
                  color: themeColorPalette.SearchBarBackGround,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Эпизоды",
                      style: themeTextStyles.textAppearanceHeadline6,
                    ),
                    Text(
                      "Все эпизоды",
                      style: themeTextStyles.textAppearanceCaption
                          .copyWith(color: themeColorPalette.HintText),
                    ),
                  ],
                ),
                HeroEpisodesList(
                  currentHeroEpisodesList: state.currentHeroEpisodesList,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
