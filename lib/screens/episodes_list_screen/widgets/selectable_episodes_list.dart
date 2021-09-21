import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/screens/episod_profile_screen/bloc/episod_profile_screen_bloc.dart';

import 'package:rick_morty_01/screens/episod_profile_screen/screen.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/bloc/episodes_list_screen_bloc.dart';
import 'package:rick_morty_01/screens/episodes_list_screen/widgets/episode_card.dart';

class SelectableEpisodesList extends StatelessWidget {
  EpisodesListBloc episodesListBloc = EpisodesListBloc();
  List<EpisodeModel> episodesList = [];

  @override
  Widget build(BuildContext context) {
    final List<EpisodeModel> episodesList = episodesListBloc.blocEpisodesList;

    return ListView.separated(
        itemBuilder: (BuildContext context, int index) => InkWell(
              child: EpisodCard(currentEpisod: episodesList[index]),
              // ),
              onTap: () {
                print('эпизод ${episodesList[index]}');
                EpisodProfileBloc episodProfileBloc = EpisodProfileBloc();
                episodProfileBloc.add(
                  EpisodProfileEvent.initial(
                      currentEpisod: episodesList[index]),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EpisodProfileScreen(),
                  ),
                );
              },
            ),
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
        separatorBuilder: (BuildContext context, int index) => Container(
              height: 24,
            ),
        itemCount: episodesList.length);
  }
}
