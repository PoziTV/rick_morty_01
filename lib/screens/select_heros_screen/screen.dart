import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/search_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/selectable_heroes_list.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/serviсe_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_block.dart';

import 'package:rick_morty_01/theme/color_theme.dart';

class SelectHerosScreen extends StatelessWidget {
  bool isGrid = false;
  List<HeroModel> heroesList = [];
  int heroesTotal = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeColorPalette.ScreenBackGround,
      ),
      child: SafeArea(
        child: BlocConsumer<SelectHeroesBloc, SelectHeroesState>(
          bloc: SelectHeroesBloc()..add(SelectHeroesEventInitial()),
          listener: (context, state) {
            if (state is SelectHeroesStateData) {
              isGrid = state.isGrid;
              heroesTotal = state.heroesList.length;
              heroesList = state.heroesList;
            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black.withOpacity(0),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: themeColorPalette.ScreenBackGround,
                title: SearchBar(),
                bottom: ServiceBar(
                  heroesTotal: heroesTotal,
                  changeViewCallBack: () {
                    SelectHeroesBloc()
                      ..add(
                        SelectHeroesEvent.changeView(isGrid: isGrid),
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
            );
          },
        ),
      ),
    );
  }
}
