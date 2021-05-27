import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_state.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_event.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

class HeroesBloc extends Bloc<HeroersEvent, HeroesState> {
  HeroesBloc() : super(HeroesState_initial());
  bool isGrid = false;

  @override
  Stream<HeroesState> mapEventToState(HeroersEvent event) async* {
    if (event is HeroesEvent_initial) yield* _mapInitialHeroesEvent();
    if (event is HeroesEvent_selectedView)
      yield* _mapSelectedViewHeroesEvent(event);
  }

  Stream<HeroesState> _mapInitialHeroesEvent() async* {
    // print("вошли в _mapInitialCharactersEvent");

    // print("послали состояние CharactersState_loading");
    yield HeroesState_loading();
    // print("начало блока try initial");
    try {} catch (ex) {
      yield HeroessState_error();
    }

    await Future.delayed(const Duration(seconds: 2), () {});

    yield HeroessState_error();

    await Future.delayed(const Duration(seconds: 3), () {});

    yield HeroesState_loading();

    await Future.delayed(const Duration(seconds: 3), () {});

    // print("послали состояние CharactersState_data");
    yield HeroesState_data(
      heroesList: HeroesList,
      isGrid: isGrid,
    );
  }

  Stream<HeroesState> _mapSelectedViewHeroesEvent(
      HeroesEvent_selectedView event) async* {
    // print("вошли в _mapSelectedViewCharactersEvent");
    // print("послали состояние CharactersState_loading");
    yield HeroesState_loading();
    isGrid = !event.isGrid;

    // await Future.delayed(const Duration(seconds: 3), (){});

    // print("послали состояние CharactersState_data");
    yield HeroesState_data(
      heroesList: HeroesList,
      isGrid: isGrid,
    );
  }
}
