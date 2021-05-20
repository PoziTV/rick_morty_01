import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class ServiceBar extends StatelessWidget implements PreferredSizeWidget {
  int heroesTotal;
  void Function()? changeViewCallBack;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 24),
      padding: EdgeInsets.only(right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ВСЕГО ПЕРСОНАЖЕЙ: $heroesTotal",
            style: themeTextStyles.textServiceBar,
          ),
          GestureDetector(
            child: SvgPicture.asset(SvgIcons.GridViewIcon),
            onTap: changeViewCallBack,
          ),
        ],
      ),
    );
  }

  ServiceBar({this.heroesTotal = 0, this.changeViewCallBack})
      : preferredSize = Size.fromHeight(68);
}
