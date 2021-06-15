part of 'episodes_list_screen_bloc.dart';

@freezed
class EpisodesListEvent with _$EpisodesListEvent {
  const factory EpisodesListEvent.initial() = EpisodesListEventInitial;

  // const factory  HeroProfileEvent.error() = _HeroProfileEventError;
}
