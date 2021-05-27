import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/theme/text_theme.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';

class LegendCard extends StatelessWidget {
  final String title;
  final String info;
  final bool detailAble;
  void Function()? onTap = () {};

  LegendCard({
    this.info = "",
    this.title = "",
    this.detailAble = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
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
              if (!detailAble)
                Padding(
                  padding: EdgeInsets.only(top: 4),
                ),
              Text(
                info,
                style: themeTextStyles.textAppearanceBody2,
              ),
            ],
          ),
          if (detailAble)
            Container(
              child: SvgPicture.asset(
                SvgIcons.AngleRightIcon,
              ),
              width: 24,
            ),
        ],
      ),
      onTap: onTap,
    );
  }
}
