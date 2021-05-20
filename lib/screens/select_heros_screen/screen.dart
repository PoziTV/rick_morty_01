import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rick_morty_01/screens/select_heros_screen/widgets/search_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/serviсe_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/list_view.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/grid_view.dart';

import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

class SelectHerosScreen extends StatefulWidget {
  @override
  _SelectHerosScreenState createState() => _SelectHerosScreenState();
}

class _SelectHerosScreenState extends State<SelectHerosScreen> {
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeColorPalette.ScreenBackGround,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: themeColorPalette.ScreenBackGround,
            title: SearchBar(),
            bottom: ServiceBar(
              heroesTotal: HeroesList.length,
              changeViewCallBack: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
            ),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: isGrid
                  ? HeroesListView(heroesList: HeroesList)
                  : HeroesGridView(heroesList: HeroesList),
            ),
          ),
        ),
      ),
    );
  }
}
