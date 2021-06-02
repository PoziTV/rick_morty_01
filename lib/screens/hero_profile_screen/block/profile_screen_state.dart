part of "profile_screen_block.dart";

@freezed
class HeroProfileState /*extends Equatable*/ with _$HeroProfileState {
  const factory HeroProfileState.initial() = _HeroProfileStateInitial;

  const factory HeroProfileState.loading() = _HeroProfileStateLoading;

  const factory HeroProfileState.error() = _HeroProfileStateError;

  const factory HeroProfileState.data({
    required HeroModel currentHero,
    required List<EpisodeModel> currentHeroEpisodesList,
  }) = _HeroProfileStateData;
}
