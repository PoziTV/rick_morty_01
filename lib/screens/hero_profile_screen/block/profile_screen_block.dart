import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";

import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/variables/episodes_list.dart';
import 'package:rick_morty_01/resources/variables/heroes_episodes.dart';

part "profile_screen_event.dart";
part "profile_screen_state.dart";
part 'profile_screen_block.freezed.dart';

class HeroProfileBloc extends Bloc<HeroProfileEvent, HeroProfileState> {
  HeroProfileBloc._internal() : super(HeroProfileState.initial());

  factory HeroProfileBloc() {
    return _singleton;
  }
  static final HeroProfileBloc _singleton = HeroProfileBloc._internal();
  static HeroProfileBloc get instance => _singleton;

  @override
  Stream<HeroProfileState> mapEventToState(HeroProfileEvent event) async* {
    yield* event.map(
      initial: _mapInitialHeroProfileEvent,
    );
  }

  Stream<HeroProfileState> _mapInitialHeroProfileEvent(
      _HeroProfileEventInitial event) async* {
    List<EpisodeModel> currentHeroEpisodesList = [];
    List<int>? EpisodesNumList = [];
    yield HeroProfileState.loading();
    try {
      // получаем список номеров серий текущего героя
      EpisodesNumList = HeroesEpisodes[event.currentHero.heroId];
      currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
        int epIdx = EpisodesNumList![index] - 1;
        return EpisodesList[epIdx];
      }); // получаем список серий текущего героя

    } catch (ex) {
      yield HeroProfileState.error();
    }

    // await Future.delayed(const Duration(seconds: 2), () {});

    // yield HeroProfileState_error();

    // await Future.delayed(const Duration(seconds: 1), () {});

    yield HeroProfileState.loading();

    await Future.delayed(const Duration(seconds: 2), () {});

    yield HeroProfileState.data(
      currentHero: event.currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
  }
}
