// To parse this JSON data, do
//
//     final heroesNetModel = heroesNetModelFromJson(jsonString);

import 'dart:convert';

import 'package:rick_morty_01/data/view/hero_model.dart';

HeroesNetModel heroesNetModelFromJson(String str) => HeroesNetModel.fromJson(json.decode(str));

String heroesNetModelToJson(HeroesNetModel data) => json.encode(data.toJson());

class HeroesNetModel {
  HeroesNetModel({
    required this.totalRecords,
    required this.pages,
    required this.nextPage,
    required this.succeeded,
     this.message,
     this.error,
    required this.heroesList,
  });

  final int totalRecords;
  final int pages;
  final int nextPage;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<HeroModel> heroesList;

  factory HeroesNetModel.fromJson(Map<String, dynamic> json) => HeroesNetModel(
    totalRecords: json["totalRecords"],
    pages: json["pages"],
    nextPage: json["nextPage"],
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    heroesList: List<HeroModel>.from(json["data"]?.map((x) => HeroModel.fromJson(x)) ?? []),
  );

  Map<String, dynamic> toJson() => {
    "totalRecords": totalRecords,
    "pages": pages,
    "nextPage": nextPage,
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": List<dynamic>.from(heroesList.map((x) => x.toJson())),
  };
}






