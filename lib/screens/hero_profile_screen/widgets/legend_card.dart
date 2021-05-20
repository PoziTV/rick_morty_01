import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';

class LegendCard extends StatelessWidget {
  String title;
  String info;
  bool detailAble;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: themeTextStyles.textAppearanceCaption
                  .copyWith(color: themeColorPalette.HintText),
            ),
            Padding(padding: EdgeInsets.only(top: detailAble ? 0 : 4)),
            Text(
              info,
              style: themeTextStyles.textAppearanceBody2,
            ),
          ],
        ),
        detailAble
            ? Container(
                child: SvgPicture.asset(
                  SvgIcons.AngleRightIcon,
                ),
                width: 24,
              )
            : Container(),
      ],
    );
  }

  LegendCard({
    this.info = "",
    this.title = "",
    this.detailAble = false,
  });
}
