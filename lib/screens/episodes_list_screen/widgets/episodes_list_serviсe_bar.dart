import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class EpisodesListServiceBar extends StatelessWidget
    implements PreferredSizeWidget {
  EpisodesListServiceBar() : preferredSize = Size.fromHeight((38+26));

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    width: 102,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text(
                          'СЕЗОН 1',
                          style: themeTextStyles.textAppearanceButton,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: themeColorPalette.NameWhite,
                          indent: 16,
                          endIndent: 16,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    width: 102,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text(
                          'СЕЗОН 2',
                          style: themeTextStyles.textAppearanceButton,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    width: 102,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text(
                          'СЕЗОН 3',
                          style: themeTextStyles.textAppearanceButton,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    width: 102,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text(
                          'СЕЗОН 4',
                          style: themeTextStyles.textAppearanceButton,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    width: 102,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text(
                          'СЕЗОН 5',
                          style: themeTextStyles.textAppearanceButton,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
