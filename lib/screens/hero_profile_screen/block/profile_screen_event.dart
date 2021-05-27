abstract class HeroProfileEvent {}


class HeroProfileEvent_initial extends HeroProfileEvent {}


class HeroProfileEvent_selectedView extends HeroProfileEvent {
  bool isGrid;
  HeroProfileEvent_selectedView({required this.isGrid});
}
