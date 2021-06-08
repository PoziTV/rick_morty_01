import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/locations_list_screen/screen.dart';

class CommonBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: Column(
              children: [
                SvgPicture.asset(SvgIcons.Heroes),
                Text('Персонажи'),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            onTap: () {},
          ),
          InkWell(
            child: Column(
              children: [
                SvgPicture.asset(SvgIcons.Locations),
                Text('Локациии'),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            onTap: () {
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
          InkWell(
            child: Column(
              children: [
                SvgPicture.asset(SvgIcons.Episodes),
                Text('Эпизоды'),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            onTap: () {},
          ),
          InkWell(
            child: Column(
              children: [
                SvgPicture.asset(SvgIcons.Settings),
                Text('Настройки'),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            onTap: () {},
          ),
        ],
      ),
      elevation: 0,
    );
  }
}
