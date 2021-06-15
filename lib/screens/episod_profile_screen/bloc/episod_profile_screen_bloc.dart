import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";
import 'package:rick_morty_01/data/episode_model.dart';

import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/data/location_model.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

part "episod_profile_screen_event.dart";
part "episod_profile_screen_state.dart";
part 'episod_profile_screen_bloc.freezed.dart';

class EpisodProfileBloc
    extends Bloc<EpisodProfileEvent, EpisodProfileState> {
  EpisodProfileBloc._internal() : super(EpisodProfileState.initial());

  factory EpisodProfileBloc() {
    return _singleton;
  }

  static final EpisodProfileBloc _singleton = EpisodProfileBloc._internal();

  @override
  Stream<EpisodProfileState> mapEventToState(
      EpisodProfileEvent event) async* {
    yield* event.map(
      initial: _mapInitialEpisodProfileEvent,
    );
  }

  Stream<EpisodProfileState> _mapInitialEpisodProfileEvent(
      EpisodProfileEventInitial event) async* {

    // LocationModel currentLocation;

    yield EpisodProfileState.loading();
    try {
      // получаем список номеров серий текущего героя
      // EpisodesNumList = heroesEpisodes[event.currentHero.heroId];
      // currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
      //   int epIdx = EpisodesNumList![index] - 1;
      //   return episodesList[epIdx];
      // }); // получаем список серий текущего героя

    } catch (ex) {
      yield EpisodProfileState.error();
    }

    yield EpisodProfileState.loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield EpisodProfileState.data(
      currentEpisod: event.currentEpisod,
      currentEpisodHeroesList: heroesList,
    );
  }
}
