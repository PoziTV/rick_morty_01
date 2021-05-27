import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroProfileState {
  HeroProfileState();
}

class HeroProfileState_data extends HeroProfileState {
  final List<HeroModel> heroesList;

  HeroProfileState_data({required this.heroesList});
}

class HeroProfileState_initial extends HeroProfileState {
  HeroProfileState_initial();
}

class HeroProfileState_error extends HeroProfileState {
  HeroProfileState_error();
}

class HeroProfileState_loading extends HeroProfileState {
  HeroProfileState_loading();
}
