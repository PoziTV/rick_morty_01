import 'package:equatable/equatable.dart';
import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroProfileState extends Equatable {
  HeroProfileState();

  @override
  List<Object> get props => [];
}

class HeroProfileState_data extends HeroProfileState {
  final HeroModel currentHero;
  List<EpisodeModel> currentHeroEpisodesList = [];

  HeroProfileState_data(
      {required this.currentHeroEpisodesList, required this.currentHero});

  @override
  List<Object> get props => [currentHero, currentHeroEpisodesList];
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
