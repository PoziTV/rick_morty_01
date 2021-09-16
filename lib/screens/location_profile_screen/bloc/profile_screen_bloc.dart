import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";

import 'package:rick_morty_01/data/network/models/hero_model.dart';
import 'package:rick_morty_01/data/network/models/location_model.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

part "profile_screen_event.dart";
part "profile_screen_state.dart";
part 'profile_screen_bloc.freezed.dart';

class LocationProfileBloc
    extends Bloc<LocationProfileEvent, LocationProfileState> {
  LocationProfileBloc._internal() : super(LocationProfileState.initial());

  factory LocationProfileBloc() {
    return _singleton;
  }

  static final LocationProfileBloc _singleton = LocationProfileBloc._internal();

  @override
  Stream<LocationProfileState> mapEventToState(
      LocationProfileEvent event) async* {
    yield* event.map(
      initial: _mapInitialLocationProfileEvent,
    );
  }

  Stream<LocationProfileState> _mapInitialLocationProfileEvent(
      LocationProfileEventInitial event) async* {

    // LocationModel currentLocation;

    yield LocationProfileState.loading();
    try {
      // получаем список номеров серий текущего героя
      // EpisodesNumList = heroesEpisodes[event.currentHero.heroId];
      // currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
      //   int epIdx = EpisodesNumList![index] - 1;
      //   return episodesList[epIdx];
      // }); // получаем список серий текущего героя

    } catch (ex) {
      yield LocationProfileState.error();
    }

    yield LocationProfileState.loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield LocationProfileState.data(
      currentLocation: event.currentLocation,
      currentLocationHeroesList: heroesList,
    );
  }
}
