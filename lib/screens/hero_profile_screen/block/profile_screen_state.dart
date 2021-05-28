import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroProfileState {
  HeroProfileState();
}

class HeroProfileState_data extends HeroProfileState {
  final HeroModel? currentHero;
  final List<EpisodeModel>? currentHeroEpisodesList;
   int i;

  HeroProfileState_data(this.i,
      {required this.currentHeroEpisodesList, required this.currentHero});
}

class HeroProfileState_initial extends HeroProfileState {
  HeroProfileState_initial();
}

class HeroProfileState_error extends HeroProfileState {
  HeroProfileState_error();
}

class HeroProfileState_success extends HeroProfileState {
  HeroProfileState_success();
}

class HeroProfileState_loading extends HeroProfileState {
  HeroProfileState_loading();
}
