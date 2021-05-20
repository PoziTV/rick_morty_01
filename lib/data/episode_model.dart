import 'package:flutter/cupertino.dart';

class EpisodeModel {
  final int episodeId;
  final int episodeSeason;
  final int episodeNum;
  final String episodeName;
  final String episodePremierDate;
  final String episodeScreen;

  EpisodeModel({
    @required this.episodeId = 0,
    @required this.episodeSeason = 0,
    @required this.episodeNum = 0,
    @required this.episodeName = "",
    @required this.episodePremierDate = "",
    @required this.episodeScreen = "",
  });
}
