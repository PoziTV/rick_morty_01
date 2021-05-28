import 'package:rick_morty_01/data/hero_model.dart';

abstract class HeroProfileEvent {}

class HeroProfileEvent_initial extends HeroProfileEvent {
  final HeroModel currentHero;

  HeroProfileEvent_initial({required this.currentHero});
}

class HeroProfileEvent_error extends HeroProfileEvent {}
