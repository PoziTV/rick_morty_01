import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 11),
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          fillColor: themeColorPalette.SearchBarBackGround,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              SvgIcons.SearchIcon,
            ),
            onPressed: () {},
          ),
          hintText: "Найти персонажа",
          hintStyle: themeTextStyles.textAppearanceBody1,

          suffixIcon: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 1,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    SvgIcons.FilterIcon,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
