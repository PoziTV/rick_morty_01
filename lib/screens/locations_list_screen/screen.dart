import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/components/common_bottom_app_bar.dart';
import 'package:rick_morty_01/screens/locations_list_screen/widgets/locations_list_search_bar.dart';
import 'package:rick_morty_01/screens/locations_list_screen/widgets/selectable_locations_list.dart';
import 'package:rick_morty_01/screens/locations_list_screen/widgets/locations_list_serviсe_bar.dart';
import 'package:rick_morty_01/screens/locations_list_screen/bloc/locations_list_screen_bloc.dart';

import 'package:rick_morty_01/theme/color_theme.dart';
import 'package:rick_morty_01/theme/theme_mode.dart';

class LocationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocationsListBloc locationsListbloc =
        LocationsListBloc(); // ini bloc LocationList
    locationsListbloc
      ..add(LocationsListEventInitial()); // ini странцу списком локаций
    return Container(
      decoration: BoxDecoration(
        // color: themeColorPalette.ScreenBackGround,
        color: context.read<CurrentThemeMode>().screenBackGround,
      ),
      child: SafeArea(
        child: BlocConsumer<LocationsListBloc, LocationsListState>(
            bloc: locationsListbloc,
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.black.withOpacity(0),
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  // backgroundColor: themeColorPalette.ScreenBackGround,
                    backgroundColor: context.read<CurrentThemeMode>().screenBackGround,
                  title: LocationsListSearchBar(title: 'Найти локацию'),
                  bottom: LocationListServiceBar(
                    locationsTotal: locationsListbloc.blocLocationsList
                        .length, //убрать, вся инф будет браться из блок
                  ),
                ),
                body: state.maybeMap(
                  data: (data) => SelectableLocationsList(
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
                bottomNavigationBar: CommonBottomAppBar.Locations(),
              );
            }),
      ),
    );
  }
}
