import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/resources/variables/episodes_list.dart';
import 'package:rick_morty_01/resources/variables/heroes_episodes.dart';

import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_event.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_state.dart';

class HeroProfileBloc extends Bloc<HeroProfileEvent, HeroProfileState> {
   HeroProfileBloc() : super(HeroProfileState_initial());

  @override
  Stream<HeroProfileState> mapEventToState(HeroProfileEvent event) async* {
    print("HeroProfile mapEventToState");
    if (event is HeroProfileEvent_initial) {
      print(
          "event is HeroProfileEvent_initial, ID: ${event.currentHero!.heroId}, name: ${event.currentHero!.name}");
      yield* _mapInitialHeroProfileEvent(event);
    }
    // if (event is HeroProfileEvent_data) {
    //   print(
    //       "event is HeroProfileEvent_initial, ID: ${event.currentHero.heroId}, name: ${event.currentHero.name}");
    //   yield* _mapInitialHeroProfileEvent(HeroProfileEvent_initial event);
    // }
    // if (event is HeroProfileEvent_error) yield* _mapInitialHeroProfileEvent(event);
  }

  Stream<HeroProfileState> _mapInitialHeroProfileEvent(
      HeroProfileEvent_initial event) async* {
    List<EpisodeModel>? currentHeroEpisodesList;
    // print("вошли в _mapInitialHeroProfileEvent");

    // print("послали состояние HeroProfileState_loading");
    yield HeroProfileState_loading();
    // print("начало блока try initial");
    try {
      List<int>? EpisodesNumList = HeroesEpisodes[event
          .currentHero!.heroId]; // получаем список номеров серий текущего героя
      // EpisodesNumList!.forEach((element) {
      //   print(element);
      // });
      // print("currentHeroEpisodesList = List.generate, ${EpisodesNumList.length}");
      currentHeroEpisodesList = List.generate(
          EpisodesNumList!.length,
          (index) =>
              EpisodesList[/*index*/2 ]); // получаем список серий текущего героя
      // print("currentHeroEpisodesList = List.generate end, $currentHeroEpisodesList");

    } catch (ex) {
      print("HeroProfileState_error");
      yield HeroProfileState_error();
    }

    // await Future.delayed(const Duration(seconds: 2), () {});

    // yield HeroProfileState_error();

    // await Future.delayed(const Duration(seconds: 3), () {});

    // yield HeroProfileState_loading();

    // await Future.delayed(const Duration(seconds: 3), () {});

    print("послали состояние HeroProfileState_data");
    yield HeroProfileState_data(
      1,
      currentHero: event.currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
    print("послали состояние HeroProfileState_data 2");
    yield HeroProfileState_data(
      2,
      currentHero: event.currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
    print("послали состояние HeroProfileState_data 3");
    await Future.delayed(const Duration(seconds: 13), () {});
    yield HeroProfileState_data(
      3,
      currentHero: event.currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
  }

  // Stream<HeroProfileState> _mapSelectedViewHeroesEvent(
  //     HeroProfileEvent_selectedView event) async* {
  //   // print("вошли в _mapSelectedViewCharactersEvent");
  //   // print("послали состояние CharactersState_loading");
  //   yield HeroProfileState_loading();
  //
  //   // await Future.delayed(const Duration(seconds: 3), (){});
  //
  //   // print("послали состояние CharactersState_data");
  //   yield HeroProfileState_data(
  //     heroesList: HeroesList,
  //   );
  // }
}
