import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '/screens/home_screen/home_screen.dart';
import 'package:rick_morty_01/screens/select_heros_screen/screen.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTextStyle(
        style: TextStyle(decoration: TextDecoration.none),
        child: PageView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              HomeScreen(),
              SelectHerosScreen(),
            ]),
      ),
    );
  }
}
