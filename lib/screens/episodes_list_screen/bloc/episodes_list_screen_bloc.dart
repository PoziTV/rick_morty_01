import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';

import 'package:rick_morty_01/resources/variables/episodes_list.dart';

part 'episodes_list_screen_event.dart';
part 'episodes_list_screen_state.dart';
part 'episodes_list_screen_bloc.freezed.dart';

class EpisodesListBloc extends Bloc<EpisodesListEvent, EpisodesListState> {
  EpisodesListBloc._internal() : super(EpisodesListState.initial());

  factory EpisodesListBloc() {
    return _singleton;
  }

  static final EpisodesListBloc _singleton = EpisodesListBloc._internal();

  List<EpisodeModel> blocEpisodesList = [];

  @override
  Stream<EpisodesListState> mapEventToState(EpisodesListEvent event) async* {
    yield* event.map(
      initial: mapLocationsListEventInitial,
    );
  }

  Stream<EpisodesListState> mapLocationsListEventInitial(
      EpisodesListEventInitial event) async* {
    yield EpisodesListState.loading();

    try {
      blocEpisodesList = episodesList;
      // получаем список номеров серий текущего героя
      // EpisodesNumList = heroesEpisodes[event.currentHero.heroId];
      // currentHeroEpisodesList = List.generate(EpisodesNumList!.length, (index) {
      //   int epIdx = EpisodesNumList![index] - 1;
      //   return episodesList[epIdx];
      // }); // получаем список серий текущего героя

    } catch (ex) {
      yield EpisodesListState.error();
    }

    yield EpisodesListState.loading();

    await Future.delayed(const Duration(seconds: 1), () {});

    yield EpisodesListState.data(
      episodesList: blocEpisodesList,
    );
  }
}
