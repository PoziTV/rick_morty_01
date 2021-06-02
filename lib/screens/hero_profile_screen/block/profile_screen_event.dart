part of "profile_screen_block.dart";

@freezed
class HeroProfileEvent with _$HeroProfileEvent {
  // const HeroProfileEvent();

  const factory HeroProfileEvent.initial({
    required HeroModel currentHero,
  }) = _HeroProfileEventInitial;

  // const factory  HeroProfileEvent.error() = _HeroProfileEventError;
}
