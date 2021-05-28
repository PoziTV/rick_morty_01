import 'package:rick_morty_01/data/episode_model.dart';
import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroProfileEvent {}

class HeroProfileEvent_initial extends HeroProfileEvent {
  final HeroModel? currentHero;

  HeroProfileEvent_initial({required this.currentHero});
}

class HeroProfileEvent_data extends HeroProfileEvent {
  final List<EpisodeModel>? currentHeroEpisodesList;
  final HeroModel? currentHero;

  HeroProfileEvent_data(
      {this.currentHeroEpisodesList, required this.currentHero});
}

class HeroProfileEvent_error extends HeroProfileEvent {}
