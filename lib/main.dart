import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/bloc/profile_screen_bloc.dart';
import 'package:rick_morty_01/screens/home_screen/screen.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/screen.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      // BlocProvider<HeroProfileBloc>(
      // create:  (BuildContext context) => HeroProfileBloc(),
      // child:
      AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: DefaultTextStyle(
            style: TextStyle(decoration: TextDecoration.none),
            child: HomeScreen(),
          ),
        ),
      // ),
    );
  }
}
