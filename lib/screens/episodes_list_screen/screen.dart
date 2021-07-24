import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/components/common_bottom_app_bar.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/widgets/episodes_list_search_bar.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/widgets/episodes_list_servi%D1%81e_bar.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/widgets/selectable_episodes_list.dart';

import 'package:rick_morty_01/theme/color_theme.dart';

import 'bloc/episodes_list_screen_bloc.dart';

class EpisodesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EpisodesListBloc episodesListbloc =
        EpisodesListBloc(); // ini bloc LocationList
    episodesListbloc
      ..add(EpisodesListEventInitial()); // ini странцу списком локаций
    // CommonBottomAppBarState.activeItem. = true;
    // CommonBottomAppBarState.activeItem[2] = true;
    print('dddd');
    return Container(
      decoration: BoxDecoration(
        color: themeColorPalette.ScreenBackGround,
      ),
      child: SafeArea(
        child: BlocConsumer<EpisodesListBloc, EpisodesListState>(
            bloc: episodesListbloc,
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.black.withOpacity(0),
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: themeColorPalette.ScreenBackGround,
                  title: EpisodesListSearchBar(title: 'Найти эпизод'),
                  bottom: EpisodesListServiceBar(

                  ),
                ),
                body: state.maybeMap(
                  data: (data) => SelectableEpisodesList(
                      // heroesList: data.heroesList,
                      ),
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (_) => Center(
                    child: Text(
                      "ОШИБКА ЗАГРУЗКИ, ПОПЫТАЕМСЯ ЕЩЕ РАЗ ...",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  orElse: () => Center(
                    child: Center(
                      child: Text(
                        "State Error",
                      ),
                    ),
                  ),
                ),
                bottomNavigationBar: CommonBottomAppBar.Episodes(),
              );
            }),
      ),
    );
  }
}
