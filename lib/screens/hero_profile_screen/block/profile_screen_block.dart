import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_morty_01/resources/variables/heroes_list.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_event.dart';
import 'package:rick_morty_01/screens/hero_profile_screen/block/profile_screen_state.dart';


class HeroProfileBloc extends Bloc<HeroProfileEvent, HeroProfileState> {
  HeroProfileBloc() : super(HeroProfileState_initial());

  @override
  Stream<HeroProfileState> mapEventToState(HeroProfileEvent event) async* {
    if (event is HeroProfileEvent_initial) yield* _mapInitialHeroesEvent();
    if (event is HeroProfileEvent_selectedView)
      yield* _mapSelectedViewHeroesEvent(event);
  }

  Stream<HeroProfileState> _mapInitialHeroesEvent() async* {
    // print("вошли в _mapInitialCharactersEvent");

    // print("послали состояние CharactersState_loading");
    yield HeroProfileState_loading();
    // print("начало блока try initial");
    try {} catch (ex) {
      yield HeroProfileState_error();
    }

    await Future.delayed(const Duration(seconds: 2), () {});

    yield HeroProfileState_error();

    await Future.delayed(const Duration(seconds: 3), () {});

    yield HeroProfileState_loading();

    await Future.delayed(const Duration(seconds: 3), () {});

    // print("послали состояние CharactersState_data");
    yield HeroProfileState_data(
      heroesList: HeroesList,
    );
  }

  Stream<HeroProfileState> _mapSelectedViewHeroesEvent(
      HeroProfileEvent_selectedView event) async* {
    // print("вошли в _mapSelectedViewCharactersEvent");
    // print("послали состояние CharactersState_loading");
    yield HeroProfileState_loading();

    // await Future.delayed(const Duration(seconds: 3), (){});

    // print("послали состояние CharactersState_data");
    yield HeroProfileState_data(
      heroesList: HeroesList,
    );
  }
}
