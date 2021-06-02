part of "select_heros_screen_block.dart";

@freezed
class SelectHeroesState with _$SelectHeroesState {
  const factory SelectHeroesState.initial() = SelectHeroesStateInitial;

  const factory SelectHeroesState.loading() = SelectHeroesStateLoading;

  const factory SelectHeroesState.error() = SelectHeroesStateError;

  const factory SelectHeroesState.data({
    required List<HeroModel> heroesList,
    required bool isGrid,
  }) = SelectHeroesStateData;
}