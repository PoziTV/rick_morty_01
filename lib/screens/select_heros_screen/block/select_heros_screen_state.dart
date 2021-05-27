import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroesState {
  HeroesState();
}

class HeroesState_data extends HeroesState {
  final List<HeroModel> heroesList;
  final bool isGrid;

  HeroesState_data({required this.heroesList, required this.isGrid});
}

class HeroesState_initial extends HeroesState {
  HeroesState_initial();
}

class HeroessState_error extends HeroesState {
  HeroessState_error();
}

class HeroesState_loading extends HeroesState {
  HeroesState_loading();
}
