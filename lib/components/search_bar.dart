import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/svg_icons.dart';
import '../theme/color_theme.dart';
import '../theme/text_theme.dart';

class SearchBar extends StatelessWidget
// implements PreferredSizeWidget
{
  // SearchBar() : prefferedSize = Size.fromHeight(48);
  // final Size prefferedSize;

  @override
  Widget build(BuildContext context) {
    return
        // AppBar(
        //   Material(
        // color: Colors.white.withOpacity(0),
        // child:
        Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 11),
      height: 48,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(100),
      //   color: themeColorPalette.SearchBarBackGround,
      // ),
      // clipBehavior: Clip.hardEdge,
      // child:
      // Row(
      // children: [
      // Container(
      //   margin: EdgeInsets.only(left: 16, right: 10),
      //   child: SvgPicture.asset(
      //     SvgIcons.SearchIcon,
      //     width: 24,
      //     height: 24,
      //   ),
      // ),
      // Expanded(
      child: TextField(
        // textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 24,
            minWidth: 24,
          ),
          prefixIcon: SvgPicture.asset(
            SvgIcons.SearchIcon,
            // width: 24,
            // height: 24,
          ),
          hintText: "Найти персонажа",
          hintStyle: themeTextStyles.textAppearanceBody1,

          suffix: Container(
            width: 1,
            // height: 30,
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.red
                  // white.withOpacity(0.1),
                  ),
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minHeight: 24,
            minWidth: 24,
          ),
          suffixIcon: SvgPicture.asset(
            SvgIcons.FilterIcon,
          ),
        ),
        // ),
        // ),
        // Container(
        //   margin: EdgeInsets.only(right: 15, left: 10),
        //   child: SvgPicture.asset(SvgIcons.FilterIcon),
        // ),
        // ],
        // ),
      ),
    );
  }

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => prefferedSize;
}
