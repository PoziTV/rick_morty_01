import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rick_morty_01/data/location_model.dart';

import 'package:rick_morty_01/screens/location_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/location_profile_screen/screen.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';

import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class SelectableLocationsList extends StatelessWidget {
  LocationsListBloc locationsListbloc = LocationsListBloc();
  List<LocationModel> locationsList = [];

  @override
  Widget build(BuildContext context) {
    final List<LocationModel> locationsList =
        locationsListbloc.blocLocationsList;

    return ListView.separated(
        itemBuilder: (BuildContext context, int index) => InkWell(
              child: _LocationCard(location: locationsList[index]),
              // ),
              onTap: () {
                LocationProfileBloc locationProfileBloc = LocationProfileBloc();
                locationProfileBloc.add(
                  LocationProfileEvent.initial(
                      currentLocation: locationsList[index]),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationProfileScreen(),
                  ),
                );
              },
            ),
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
        separatorBuilder: (BuildContext context, int index) => Container(
              height: 24,
            ),
        itemCount: locationsListbloc.blocLocationsList.length);
  }
}

class _LocationCard extends StatelessWidget {
  final LocationModel location;
  _LocationCard({required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeColorPalette.SearchBarBackGround,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(location.locationAvaPath)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 12),
            child: Text(
              location.locationName,
              style: themeTextStyles.textAppearanceHeadline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Мир - ${location.locationWorld}",
              style: themeTextStyles.textAppearanceCaption.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 12)),
        ],
      ),
    );
  }
}
