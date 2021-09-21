import 'package:flutter/material.dart';

class EpisodeModel {
  final int episodeId;
  final String episodeName;
  final int episodeSeason;
  final int episodeNum;

  final String episodePremierDate;
  final String episodeScreen;
  final String episodeDesc; // описание серии?

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

// class Episode {
//   Episode({
//     required this.id,
//     required this.name,
//     required this.season,
//     required this.series,
//     required this.plot,
//     required this.premiere,
//     required this.imageName,
//     this.characters,
//   });
//
//   final String id;
//   final String name;
//   final int season;
//   final int series;
//   final String plot;
//   final DateTime premiere;
//   final String imageName;
//   final dynamic characters;
//
//   factory Episode.fromJson(Map<String, dynamic> json) => Episode(
//         id: json["id"],
//         name: json["name"],
//         season: json["season"],
//         series: json["series"],
//         plot: json["plot"],
//         premiere: DateTime.parse(json["premiere"]),
//         imageName: json["imageName"],
//         characters: json["characters"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "season": season,
//         "series": series,
//         "plot": plot,
//         "premiere": premiere.toIso8601String(),
//         "imageName": imageName,
//         "characters": characters,
//       };
// }
