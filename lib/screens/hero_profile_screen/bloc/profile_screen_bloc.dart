import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";
import 'package:rick_morty_01/data/repository.dart';

import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';
// import 'package:rick_morty_01/resources/variables/episodes_list.dart';
// import 'package:rick_morty_01/resources/variables/heroes_episodes.dart';

part "profile_screen_event.dart";
part "profile_screen_state.dart";
part 'profile_screen_bloc.freezed.dart';

class HeroProfileBloc extends Bloc<HeroProfileEvent, HeroProfileState> {
  HeroProfileBloc._internal() : super(HeroProfileState.initial());

  factory HeroProfileBloc() {
    return _singleton;
  }

  static final HeroProfileBloc _singleton = HeroProfileBloc._internal();

  final _repository = Repository();

  HeroModel? currentHero;
  List<EpisodeModel> currentHeroEpisodesList = [];
  // List<int>? EpisodesNumList = [];

  @override
  Stream<HeroProfileState> mapEventToState(HeroProfileEvent event) async* {
    yield* event.map(
      initial: _mapHeroProfileEventInitial,
    );
  }

  Stream<HeroProfileState> _mapHeroProfileEventInitial(
      _HeroProfileEventInitial event) async* {
    yield HeroProfileState.loading();

    try {
      // получаем список номеров серий текущего героя
      currentHero = await _repository.getHeroById(event.currentHeroId);
      if (currentHero == null) throw ('getHeroeById вернул HeroById = null');
      currentHeroEpisodesList = currentHero?.episodesList ?? [];

      // EpisodesNumList = heroesEpisodes[event.currentHero.id];
      // currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
      //   int epIdx = EpisodesNumList![index] - 1;
      //   return episodesList[epIdx];

      // } // получаем список серий текущего героя

    } catch (ex) {
      yield HeroProfileState.error();
    }

// if (currentHero == null ) throw ('efer');
//     yield HeroProfileState.loading();

    // await Future.delayed(const Duration(seconds: 2), () {});

    yield HeroProfileState.data(
      // currentHero: event.currentHero,
      currentHero: currentHero!,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
  }
}
