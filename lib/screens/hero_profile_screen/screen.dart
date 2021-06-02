import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/data/episode_model.dart';
import 'dart:ui';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_block.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_state.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_info.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_description.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_legend.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/widgets/hero_episodes_list.dart';

class HeroProfileScreen extends StatelessWidget {
  HeroProfileScreen();

  @override
  Widget build(BuildContext context) {
    BuildContext initialContext = context;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTextStyle(
          style: TextStyle(decoration: TextDecoration.none),
          child: BlocConsumer<HeroProfileBloc, HeroProfileState>(
            bloc: HeroProfileBloc(),
            listener: (context, state) {},
            builder: (context, state) {
              if (state is HeroProfileState_data) {
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
                                    image: AssetImage(state.currentHero.ava),
                                  ),
                                ),
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 8, sigmaY: 8),
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
                                    backgroundColor:
                                        themeColorPalette.ScreenBackGround,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(state.currentHero.ava),
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
                                  style:
                                      themeTextStyles.textAppearanceHeadline6,
                                ),
                                Text(
                                  "Все эпизоды",
                                  style: themeTextStyles.textAppearanceCaption
                                      .copyWith(
                                          color: themeColorPalette.HintText),
                                ),
                              ],
                            ),
                            HeroEpisodesList(
                              currentHeroEpisodesList:
                                  state.currentHeroEpisodesList,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              } else if (state is HeroProfileState_loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
