part of "profile_screen_block.dart";

@freezed
class HeroProfileState /*extends Equatable*/ with _$HeroProfileState {
  const factory HeroProfileState.initial() = HeroProfileStateInitial;

  const factory HeroProfileState.loading() = HeroProfileStateLoading;

  const factory HeroProfileState.error() = HeroProfileStateError;

  const factory HeroProfileState.data({
    required HeroModel currentHero,
    required List<EpisodeModel> currentHeroEpisodesList,
  }) = HeroProfileStateData;
}
