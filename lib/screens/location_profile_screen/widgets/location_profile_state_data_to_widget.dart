import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/location_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

import 'location_heros_list.dart';
import 'location_info.dart';

class LocationProfileStateDataToWidget extends StatelessWidget {
  LocationProfileStateData state;
  BuildContext initialContext;

  LocationProfileStateDataToWidget(
      {required this.state, required this.initialContext});

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
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Column(
          children: [
            Stack(
                children: [
                  Container(
                    height: 298,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:
                            AssetImage(state.currentLocation.locationAvaPath),
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
                      LocationInfo(currentLocation: state.currentLocation),
                      Row(
                        children: [
                          Text(
                            "Персонажи",
                            style: themeTextStyles.textAppearanceHeadline6,
                          ),
                        ],
                      ),
                      LocationHerosList(
                        currentLocationHerosList:
                            state.currentLocationHeroesList,
                      ),
                    ]),
                  ),
                ]),
            // Container(
            //   decoration: BoxDecoration(
            //     color: themeColorPalette.ScreenBackGround,
            //     borderRadius: BorderRadius.all(Radius.circular(26)),
            //   ),
            //   transform: Matrix4.translationValues(0, -50, 0),
            //   padding: EdgeInsets.only(left: 16, right: 16),
            //   child: Column(children: [
            //     LocationInfo(currentLocation: state.currentLocation),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           "Персонажи",
            //           style: themeTextStyles.textAppearanceHeadline6,
            //         ),
            //       ],
            //     ),
            //     LocationHerosList(
            //       currentLocationHerosList: state.currentLocationHeroesList,
            //     ),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}
