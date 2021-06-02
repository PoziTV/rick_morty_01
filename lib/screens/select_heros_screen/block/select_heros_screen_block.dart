import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_state.dart';
import 'package:rick_morty_01/screens/select_heros_screen/block/select_heros_screen_event.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  HeroesBloc() : super(HeroesState_initial());
  bool isGrid = false;

  @override
  Stream<HeroesState> mapEventToState(HeroesEvent event) async* {
    if (event is HeroesEvent_initial) yield* _mapInitialHeroesEvent();
    if (event is HeroesEvent_selectedView)
      yield* _mapSelectedViewHeroesEvent(event);
  }

  Stream<HeroesState> _mapInitialHeroesEvent() async* {
    yield HeroesState_loading();

    try {
      /*загрузка данных из репо*/
    } catch (ex) {
      yield HeroessState_error();
    }

    await Future.delayed(const Duration(seconds: 1), () {});

    yield HeroessState_error();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield HeroesState_loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    //где то здесь должно выдаться состояние success

    yield HeroesState_data(
      heroesList: heroesList,
      isGrid: isGrid,
    );
  }

  Stream<HeroesState> _mapSelectedViewHeroesEvent(
      HeroesEvent_selectedView event) async* {
    yield HeroesState_loading();
    isGrid = !event.isGrid;

    yield HeroesState_data(
      heroesList: heroesList,
      isGrid: isGrid,
    );
  }
}
