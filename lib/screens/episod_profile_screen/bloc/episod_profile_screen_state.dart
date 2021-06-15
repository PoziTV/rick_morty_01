part of 'episod_profile_screen_bloc.dart';



@freezed
class EpisodProfileState /*extends Equatable*/ with _$EpisodProfileState {
  const factory EpisodProfileState.initial() = EpisodProfileStateInitial;

  const factory EpisodProfileState.loading() = EpisodProfileStateLoading;

  const factory EpisodProfileState.error() = EpisodProfileStateError;

  const factory EpisodProfileState.data({
    required EpisodeModel currentEpisod,
    required List<HeroModel> currentEpisodHeroesList,
  }) = EpisodProfileStateData;
}
