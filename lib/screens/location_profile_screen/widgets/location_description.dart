import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/location_model.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class LocationDescription extends StatelessWidget {
  final LocationModel currentLocation;
  LocationDescription({required this.currentLocation});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      child: Text(
        currentLocation.locationDesc,
        style: themeTextStyles.textDescription,
      ),
    );
  }
}
