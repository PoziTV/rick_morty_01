import 'package:flutter/material.dart';

class EpisodeModel {
  final int episodeId;
  final int episodeSeason;
  final int episodeNum;
  final String episodeName;
  final String episodePremierDate;
  final String episodeScreen;
  final String episodeDesc;

  EpisodeModel({
    @required this.episodeId = 0,
    @required this.episodeSeason = 0,
    @required this.episodeNum = 0,
    @required this.episodeName = "",
    @required this.episodePremierDate = "",
    @required this.episodeScreen = "",
    @required this.episodeDesc = "",
  });
}
