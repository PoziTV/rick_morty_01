import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/resources/variables/heroes_list.dart';

part "select_heros_screen_event.dart";
part 'select_heros_screen_state.dart';
part "select_heros_screen_bloc.freezed.dart";

class SelectHeroesBloc extends Bloc<SelectHeroesEvent, SelectHeroesState> {
  SelectHeroesBloc._internal() : super(SelectHeroesState.initial());

  factory SelectHeroesBloc() {
    return _singleton;
  }

  static final SelectHeroesBloc _singleton = SelectHeroesBloc._internal();

  bool isGrid = false;
  List<HeroModel> blocHeroesList = [];
  int heroesTotal = 0;

  @override
  Stream<SelectHeroesState> mapEventToState(SelectHeroesEvent event) async* {
    yield* event.map(
      initial: _mapSelectHeroesEventInitial,
      changeView: _mapSelectHeroesEventchangeView,
    );
  }

  Stream<SelectHeroesState> _mapSelectHeroesEventInitial(
      SelectHeroesEventInitial event) async* {
    yield SelectHeroesState.loading();

    try {
      blocHeroesList = heroesList;
      /*загрузка данных из репо*/
    } catch (ex) {
      yield SelectHeroesState.error();
    }

    await Future.delayed(const Duration(seconds: 1), () {});

    yield SelectHeroesState.error();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield SelectHeroesState.loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    //где то здесь должно выдаться состояние success

    yield SelectHeroesState.data(
      heroesList: blocHeroesList,
      isGrid: isGrid,
    );
  }

  Stream<SelectHeroesState> _mapSelectHeroesEventchangeView(
      SelectHeroesEventChangeView event) async* {
    yield SelectHeroesState.loading();
    isGrid = !event.isGrid;

    yield SelectHeroesState.data(
      heroesList: blocHeroesList,
      isGrid: isGrid,
    );
  }
}
