import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/episod_profile_screen/bloc/episod_profile_screen_bloc.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

import 'episod_profile_screen_heroes_list.dart';
import 'episod_profile_screen_info.dart';

class EpisodProfileStateDataToWidget extends StatelessWidget {
  EpisodProfileStateData state;
  BuildContext initialContext;

  EpisodProfileStateDataToWidget(
      {required this.state, required this.initialContext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: InkWell(
            child: SvgPicture.asset(
              SvgIcons.ArrowBack,
              width: 24,
              height: 24,
            ),
            onTap: () {
              Navigator.pop(initialContext);
            },

          ),
        ),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: themeColorPalette.ScreenBackGround,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 274,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(state.currentEpisod.episodeScreen),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: themeColorPalette.ScreenBackGround,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 251),
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(children: [
                    EpisodInfo(currentEpisod: state.currentEpisod),
                    Row(
                      children: [
                        Text(
                          "Персонажи",
                          style: themeTextStyles.textAppearanceHeadline6,
                        ),
                      ],
                    ),
                    EpisodHeroesList(
                      currentEpisodHerosList: state.currentEpisodHeroesList,
                    ),
                  ]),
                ),
                Positioned(
                  top: 185,
                  child: IconButton(
                    iconSize: 132,
                    icon: SvgPicture.asset(SvgIcons.Play),
                    onPressed: () {
                      print('поиграй со мной');
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
