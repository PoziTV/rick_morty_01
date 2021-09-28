// To parse this JSON data, do
//
//     final heroNetModel = heroNetModelFromJson(jsonString);

import 'dart:convert';

import 'package:rick_morty_01/data/view/hero_model.dart';

HeroNetModel heroNetModelFromJson(String str) =>
    HeroNetModel.fromJson(json.decode(str));

String heroNetModelToJson(HeroNetModel data) => json.encode(data.toJson());

class HeroNetModel {
  HeroNetModel({
    required this.succeeded,
    this.message,
    this.error,
    required this.hero,
  });

  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final HeroModel hero;

  factory HeroNetModel.fromJson(Map<String, dynamic> json) => HeroNetModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
    hero: HeroModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": hero.toJson(),
      };
}


