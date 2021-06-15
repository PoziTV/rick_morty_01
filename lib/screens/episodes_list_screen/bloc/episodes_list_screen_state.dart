part of 'episodes_list_screen_bloc.dart';

@freezed
class EpisodesListState /*extends Equatable*/ with _$EpisodesListState {
  const factory EpisodesListState.initial() = EpisodesListStateInitial;

  const factory EpisodesListState.loading() = EpisodesListStateLoading;

  const factory EpisodesListState.error() = EpisodesListStateError;

  const factory EpisodesListState.data({
    required List<EpisodeModel> episodesList,
  }) = EpisodesListStateData;
}
