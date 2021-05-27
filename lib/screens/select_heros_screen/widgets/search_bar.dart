import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/text_theme.dart';

TextEditingController _textController = TextEditingController();

class SearchBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 11,
      ),
      height: 50,
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12,),
          fillColor: themeColorPalette.SearchBarBackGround,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              SvgIcons.SearchIcon,
            ),
            onPressed: () {print("doSearch button");},
          ),
          hintText: "Найти персонажа",
          hintStyle: themeTextStyles.textAppearanceBody1,
          suffixIcon: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                VerticalDivider(
                  indent: 12,
                  endIndent: 12,
                  thickness: 1,
                  color: Colors.white.withOpacity(0.1),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    SvgIcons.FilterIcon,
                  ),
                  onPressed: () {print("filter button");},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
