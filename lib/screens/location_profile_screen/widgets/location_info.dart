import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/location_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

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
          currentLocation.name,
          style: themeTextStyles.textAppearanceHeadline4,
        ),
        Padding(padding: EdgeInsets.only(top: 3)),
        Text(
          currentLocation.measurement,
          style: themeTextStyles.textAppearanceCaption,
        ),
        Padding(padding: EdgeInsets.only(top: 32)),
        Text(
          currentLocation.about,
          style: themeTextStyles.textDescription,
        ),
        Padding(padding: EdgeInsets.only(top: 36)),
      ],
    );
  }
}
