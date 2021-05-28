abstract class HeroesEvent {}


class HeroesEvent_initial extends HeroesEvent {}


class HeroesEvent_selectedView extends HeroesEvent {
  bool isGrid;
  HeroesEvent_selectedView({required this.isGrid});
}
