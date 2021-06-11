import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class LocationListServiceBar extends StatelessWidget
    implements PreferredSizeWidget {
  int locationsTotal;

  LocationListServiceBar({
    this.locationsTotal = 0,
  }) : preferredSize = Size.fromHeight(68);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 24),
      padding: EdgeInsets.only(
        // left: 16,
        right: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ВСЕГО ЛОКАЦИЙ: $locationsTotal",
            style: themeTextStyles.textServiceBar,
          ),
        ],
      ),
    );
  }
}
