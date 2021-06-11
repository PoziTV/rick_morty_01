import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/screen.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/locations_list_screen/screen.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class CommonBottomAppBar extends StatefulWidget {
  @override
  _CommonBottomAppBarState createState() => _CommonBottomAppBarState();
}

class _CommonBottomAppBarState extends State<CommonBottomAppBar> {
  static List<bool> activeItem = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: themeColorPalette.SearchBarBackGround,
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 8,
          bottom: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Heroes,
                      color: activeItem[0]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                      // height: 24,
                    ),
                    Text(
                      'Персонажи',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[0]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  setState(() {
                    activeItem = List.filled(4, false);
                    activeItem[0] = true;
                  });

                  SelectHeroesBloc()
                    ..add(
                      SelectHeroesEvent.initial(),
                    );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectHerosScreen(),
                      ));
                },
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        SvgIcons.Locations,
                        color: activeItem[1]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        width: 24,
                      ),
                      Text(
                        'Локациии',
                        style: themeTextStyles.textAppearanceCaption.copyWith(
                          color: activeItem[1]
                              ? themeColorPalette.AliveGreen
                              : themeColorPalette.HintText,
                        ),
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                  onTap: () {
                    setState(() {
                      activeItem = List.filled(4, false);
                      activeItem[1] = true;
                    });

                    LocationsListBloc()
                      ..add(
                        LocationsListEvent.initial(),
                      );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationsListScreen(),
                        ));
                  },
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Episodes,
                      color: activeItem[2]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                    ),
                    Text(
                      'Эпизоды',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[2]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  setState(() {
                    activeItem = List.filled(4, false);
                    activeItem[2] = true;
                  });
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIcons.Settings,
                      color: activeItem[3]
                          ? themeColorPalette.AliveGreen
                          : themeColorPalette.HintText,
                      width: 24,
                    ),
                    Text(
                      'Настройки',
                      style: themeTextStyles.textAppearanceCaption.copyWith(
                        color: activeItem[3]
                            ? themeColorPalette.AliveGreen
                            : themeColorPalette.HintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                onTap: () {
                  setState(() {
                    activeItem = List.filled(4, false);
                    activeItem[3] = true;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}
