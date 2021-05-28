import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/map_state_to_%20widget.dart';

import 'package:rick_morty_01/screens/select_heros_screen/widgets/search_bar.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/selectable_heroes_list.dart';
import 'package:rick_morty_01/screens/select_heros_screen/widgets/serviсe_bar.dart';

import 'package:rick_morty_01/theme/color_theme.dart';

import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_state.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_event.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_block.dart';

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
        child: BlocProvider<HeroesBloc>(
          create: (BuildContext context) =>
              HeroesBloc()..add(HeroesEvent_initial()),

          child: BlocConsumer<HeroesBloc, HeroesState>(
              listener: (context, state) {
            if (state is HeroesState_data) {
              isGrid = state.isGrid;
              heroesTotal = state.heroesList.length;
              heroesList = state.heroesList;
            }
          }, builder: (context, state) {
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
                    context.read<HeroesBloc>()
                      ..add(
                        HeroesEvent_selectedView(isGrid: isGrid),
                      );
                  },
                ),
              ),
              body: mapStateToWidget(
                state: state,
                onLoad: Center(
                  child: CircularProgressIndicator(),
                ),
                data: SelectableHeroesList(
                  isGrid: isGrid,
                  heroesList: heroesList,
                ),
                onError: Center(
                  child: Text(
                    "ОШИБКА ЗАГРУЗКИ, ПОПЫТАЕМСЯ ЕЩЕ РАЗ ...",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

