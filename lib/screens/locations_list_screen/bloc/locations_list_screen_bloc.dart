import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";

import 'package:rick_morty_01/data/view/location_model.dart';
import 'package:rick_morty_01/resources/variables/locations_list.dart';

part 'locations_list_screen_event.dart';
part 'locations_list_screen_state.dart';
part 'locations_list_screen_bloc.freezed.dart';

class LocationsListBloc extends Bloc<LocationsListEvent, LocationsListState> {
  LocationsListBloc._internal() : super(LocationsListState.initial());

  factory LocationsListBloc() {
    return _singleton;
  }

  static final LocationsListBloc _singleton = LocationsListBloc._internal();

  List<LocationModel> blocLocationsList = [];

  @override
  Stream<LocationsListState> mapEventToState(LocationsListEvent event) async* {
    yield* event.map(
      initial: mapLocationsListEventInitial,
    );
  }

  Stream<LocationsListState> mapLocationsListEventInitial(
      LocationsListEventInitial event) async* {

    // List<EpisodeModel> currentHeroEpisodesList = [];
    // List<int>? EpisodesNumList = [];

    yield LocationsListState.loading();

    try {
      blocLocationsList = locationsList;
      // получаем список номеров серий текущего героя
      // EpisodesNumList = heroesEpisodes[event.currentHero.heroId];
      // currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
      //   int epIdx = EpisodesNumList![index] - 1;
      //   return episodesList[epIdx];
      // }); // получаем список серий текущего героя

    } catch (ex) {
      yield LocationsListState.error();
    }

    yield LocationsListState.loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield LocationsListState.data(
      locationsList: blocLocationsList,
    );
  }
}
