import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_morty_01/components/common_bottom_app_bar.dart';

import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/svg_icons.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/widgets/heroes_list_search_bar.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/widgets/selectable_heroes_list.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/widgets/serviсe_bar.dart';
import 'package:rick_morty_01/screens/heroes_list_screen/bloc/select_heros_screen_bloc.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/locations_list_screen/screen.dart';

import 'package:rick_morty_01/theme/color_theme.dart';

class SelectHerosScreen extends StatelessWidget {
  // bool isGrid = false;
  // List<HeroModel> heroesList = [];
  // int heroesTotal = 0;

  @override
  Widget build(BuildContext context) {
    SelectHeroesBloc selectHeroesbloc = SelectHeroesBloc();
    return Container(
      decoration: BoxDecoration(
        color: themeColorPalette.ScreenBackGround,
      ),
      child: SafeArea(
        child: BlocConsumer<SelectHeroesBloc, SelectHeroesState>(
          bloc: selectHeroesbloc..add(SelectHeroesEventInitial()),
          listener: (context, state) {
            // if (state is SelectHeroesStateData) {
            // isGrid = state.isGrid;
            // heroesTotal = state.heroesList.length;
            // heroesList = state.heroesList;
            // }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black.withOpacity(0),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: themeColorPalette.ScreenBackGround,
                title: HeroesListSearchBar(title: 'Найти персонажа'),
                bottom: ServiceBar(
                  heroesTotal: selectHeroesbloc.blocHeroesList.length,
                  changeViewCallBack: () {
                    selectHeroesbloc
                      ..add(
                        SelectHeroesEvent.changeView(
                            isGrid: selectHeroesbloc.isGrid /*isGrid*/),
                      );
                  },
                ),
              ),
              body: state.maybeMap(
                data: (data) => SelectableHeroesList(
                  isGrid: data.isGrid,
                  heroesList: data.heroesList,
                ),
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                error: (_) => Center(
                  child: Text(
                    "ОШИБКА ЗАГРУЗКИ, ПОПЫТАЕМСЯ ЕЩЕ РАЗ ...",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                orElse: () => Center(
                  child: Text("State Error"),
                ),
              ),
              bottomNavigationBar: CommonBottomAppBar.Heroes(),
            );
          },
        ),
      ),
    );
  }
}
