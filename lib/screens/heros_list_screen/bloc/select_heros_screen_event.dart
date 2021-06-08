part of "select_heros_screen_bloc.dart";

@freezed
class SelectHeroesEvent with _$SelectHeroesEvent {
  const factory SelectHeroesEvent.initial() = SelectHeroesEventInitial;
  const factory SelectHeroesEvent.changeView({required bool isGrid}) =
  SelectHeroesEventChangeView;
}