// To parse this JSON data, do
//
//     final episodesNetModel = episodesNetModelFromJson(jsonString);

import 'dart:convert';

import 'package:rick_morty_01/data/view/episode_model.dart';

EpisodesNetModel episodesNetModelFromJson(String str) => EpisodesNetModel.fromJson(json.decode(str));

String episodesNetModelToJson(EpisodesNetModel data) => json.encode(data.toJson());

class EpisodesNetModel {
  EpisodesNetModel({
    required this.totalRecords,
    required this.pages,
    required this.nextPage,
    required this.succeeded,
    this.message,
    this.error,
    required this.episodesList,
  });

  final int totalRecords;
  final int pages;
  final int nextPage;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<EpisodeModel> episodesList;

  factory EpisodesNetModel.fromJson(Map<String, dynamic> json) => EpisodesNetModel(
    totalRecords: json["totalRecords"],
    pages: json["pages"],
    nextPage: json["nextPage"],
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    episodesList: List<EpisodeModel>.from(json["data"].map((x) => EpisodeModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalRecords": totalRecords,
    "pages": pages,
    "nextPage": nextPage,
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": List<dynamic>.from(episodesList.map((x) => x.toJson())),
  };
}

