import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/resources/variables/episodes_list.dart';
import 'package:rick_morty_01/resources/variables/heroes_episodes.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_event.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_state.dart';

part "profile_screen_event.dart";
part "profile_screen_state.dart";

class HeroProfileBloc extends Bloc<HeroProfileEvent, HeroProfileState> {
  HeroProfileBloc._internal() : super(HeroProfileState_initial());

  factory HeroProfileBloc() {
    return _singleton;
  }
  static final HeroProfileBloc _singleton = HeroProfileBloc._internal();
  static HeroProfileBloc get instance => _singleton;

  int myKey2 = 0;

  @override
  Stream<HeroProfileState> mapEventToState(HeroProfileEvent event) async* {
    if (event is HeroProfileEvent_initial) {
      yield* _mapInitialHeroProfileEvent(event);
    }
  }

  Stream<HeroProfileState> _mapInitialHeroProfileEvent(
      HeroProfileEvent_initial event) async* {
    List<EpisodeModel> currentHeroEpisodesList = [];
    List<int> EpisodesNumList = [];
    yield HeroProfileState_loading();
    try {
      // получаем список номеров серий текущего героя
      List<int>? EpisodesNumList = HeroesEpisodes[event.currentHero.heroId];
      currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
        int epIdx = EpisodesNumList[index] - 1;
        return EpisodesList[epIdx];
      }); // получаем список серий текущего героя

    } catch (ex) {
      yield HeroProfileState_error();
    }

    // await Future.delayed(const Duration(seconds: 2), () {});

    // yield HeroProfileState_error();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield HeroProfileState_loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield HeroProfileState_data(
      currentHero: event.currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
  }
}
