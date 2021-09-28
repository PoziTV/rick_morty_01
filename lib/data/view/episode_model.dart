import 'package:rick_morty_01/data/view/hero_model.dart';

class EpisodeModel {
  EpisodeModel({
    this.id,
    this.name,
    this.season,
    this.series,
    this.plot,
    required this.premiere,
    required this.imageName,
    required this.heroesList,
  });

  final String? id;
  final String? name;
  final int? season;
  final int? series;
  final String? plot; // about, описание серии,
  final DateTime premiere;
  final String imageName;
  final List<HeroModel> heroesList;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) => EpisodeModel(
        id: json["id"],
        name: json["name"],
        season: json["season"],
        series: json["series"],
        plot: json["plot"],
        premiere: DateTime.parse(json["premiere"]),
        imageName: json["imageName"],
        // heroesList: json["characters"],
        heroesList:
            List<HeroModel>.from(json["characters"]?.map((x) => x) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "season": season,
        "series": series,
        "plot": plot,
        "premiere": premiere.toIso8601String(),
        "imageName": imageName,
        // "characters": heroesList,
        "characters": List<dynamic>.from(heroesList.map((x) => x)),
      };
}
