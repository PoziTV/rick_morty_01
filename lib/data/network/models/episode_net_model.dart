// To parse this JSON data, do
//
//     final episodeNetModel = episodeNetModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:rick_morty_01/data/view/episode_model.dart';

EpisodeNetModel episodeNetModelFromJson(String str) => EpisodeNetModel.fromJson(json.decode(str));

String episodeNetModelToJson(EpisodeNetModel data) => json.encode(data.toJson());

class EpisodeNetModel {
  EpisodeNetModel({
    required this.succeeded,
    this.message,
    this.error,
    required this.episode,
  });

  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final EpisodeModel episode;

  factory EpisodeNetModel.fromJson(Map<String, dynamic> json) => EpisodeNetModel(
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    episode: EpisodeModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": episode.toJson(),
  };
}

// class Data {
//   Data({
//     @required this.id,
//     @required this.name,
//     @required this.season,
//     @required this.series,
//     @required this.plot,
//     @required this.premiere,
//     @required this.imageName,
//     @required this.characters,
//   });
//
//   final String id;
//   final String name;
//   final int season;
//   final int series;
//   final String plot;
//   final DateTime premiere;
//   final String imageName;
//   final List<Character> characters;
//
//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//     id: json["id"],
//     name: json["name"],
//     season: json["season"],
//     series: json["series"],
//     plot: json["plot"],
//     premiere: DateTime.parse(json["premiere"]),
//     imageName: json["imageName"],
//     characters: List<Character>.from(json["characters"].map((x) => Character.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "season": season,
//     "series": series,
//     "plot": plot,
//     "premiere": premiere.toIso8601String(),
//     "imageName": imageName,
//     "characters": List<dynamic>.from(characters.map((x) => x.toJson())),
//   };
// }

// class Character {
//   Character({
//     @required this.id,
//     @required this.firstName,
//     @required this.lastName,
//     @required this.fullName,
//     @required this.status,
//     @required this.about,
//     @required this.gender,
//     @required this.race,
//     @required this.imageName,
//     @required this.locationId,
//     @required this.location,
//     @required this.placeOfBirthId,
//     @required this.placeOfBirth,
//     @required this.episodes,
//   });
//
//   final String id;
//   final String firstName;
//   final String lastName;
//   final String fullName;
//   final int status;
//   final String about;
//   final int gender;
//   final String race;
//   final String imageName;
//   final String locationId;
//   final dynamic location;
//   final String placeOfBirthId;
//   final dynamic placeOfBirth;
//   final dynamic episodes;
//
//   factory Character.fromJson(Map<String, dynamic> json) => Character(
//     id: json["id"],
//     firstName: json["firstName"],
//     lastName: json["lastName"],
//     fullName: json["fullName"],
//     status: json["status"],
//     about: json["about"],
//     gender: json["gender"],
//     race: json["race"],
//     imageName: json["imageName"],
//     locationId: json["locationId"],
//     location: json["location"],
//     placeOfBirthId: json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
//     placeOfBirth: json["placeOfBirth"],
//     episodes: json["episodes"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "firstName": firstName,
//     "lastName": lastName,
//     "fullName": fullName,
//     "status": status,
//     "about": about,
//     "gender": gender,
//     "race": race,
//     "imageName": imageName,
//     "locationId": locationId,
//     "location": location,
//     "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
//     "placeOfBirth": placeOfBirth,
//     "episodes": episodes,
//   };
// }
