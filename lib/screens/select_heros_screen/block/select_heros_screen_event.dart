abstract class HeroersEvent {}


class HeroesEvent_initial extends HeroersEvent {}


class HeroesEvent_selectedView extends HeroersEvent {
  bool isGrid;
  HeroesEvent_selectedView({required this.isGrid});
}
