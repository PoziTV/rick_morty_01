import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/location_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';

class LocationInfo extends StatelessWidget {
  LocationModel currentLocation;
  LocationInfo({required this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 34)),
        Text(
          currentLocation.locationName,
          style: themeTextStyles.textAppearanceHeadline4,
        ),
        Padding(padding: EdgeInsets.only(top: 3)),
        Text(
          currentLocation.locationWorld,
          style: themeTextStyles.textAppearanceCaption,
        ),
        Padding(padding: EdgeInsets.only(top: 32)),
        Text(
          currentLocation.locationDesc,
          style: themeTextStyles.textDescription,
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
      ],
    );
  }
}
