import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class ServiceBar extends StatelessWidget implements PreferredSizeWidget {
  int heroesNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 20),
      padding: EdgeInsets.only(right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ВСЕГО ПЕРСОНАЖЕЙ: $heroesNum",
            style: themeTextStyles.textServiceBar,
          ),
          SvgPicture.asset(SvgIcons.GridViewIcon),
        ],
      ),
    );
  }

  ServiceBar({this.heroesNum = 0});
  @override
  // TODO: implement preferredSize
  Size get preferredSize => preferredSize;
}
