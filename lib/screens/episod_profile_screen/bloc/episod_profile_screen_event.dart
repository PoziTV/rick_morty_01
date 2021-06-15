part of "episod_profile_screen_bloc.dart";

@freezed
class EpisodProfileEvent with _$EpisodProfileEvent {
  const factory EpisodProfileEvent.initial({
    required EpisodeModel currentEpisod,
  }) = EpisodProfileEventInitial;

  // const factory  HeroProfileEvent.error() = _HeroProfileEventError;
}
