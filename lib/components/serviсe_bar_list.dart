import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';

class ServiceBarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 20),
      padding: EdgeInsets.only(right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ВСЕГО ПЕРСОНАЖЕЙ: 200",
            style: TextStyle(
              color: Color(0xff5B6975),
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          SvgPicture.asset(SvgIcons.ListViewIcon),
        ],
      ),
    );
  }
}
