import 'package:rick_morty_01/data/view/hero_model.dart';
import 'package:rick_morty_01/data/view/measurements_model.dart';
import 'package:rick_morty_01/data/view/micro_universum_model.dart';

class LocationModel {
  LocationModel({
    required this.id,
    required this.name,
    required this.type,
    required this.measurement,
    required this.about,
    required this.imageName,
    required this.heroesList,
    required this.placeOfBirthHeroes,
  });

  final String id;
  final String name;
  final String type;
  final String measurement ;
  final String about;
  final String imageName;
  final List<HeroModel> heroesList;
  final List<HeroModel> placeOfBirthHeroes;

  factory LocationModel.fromJson(Map<String, dynamic>? json) => LocationModel(
        id: json?["id"] ?? '',
        name: json?["name"] ?? '',
        type: json?["type"] ?? '',
        measurement: json?["measurements"] ?? '',
        about: json?["about"] ?? '',
        imageName: json?["imageName"] ?? '',
        heroesList: List<HeroModel>.from(json?["characters"]?.map((x) => x) ?? []),
        placeOfBirthHeroes:
            List<HeroModel>.from(json?["placeOfBirthCharacters"]?.map((x) => x) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurement,
        "about": about,
        "imageName": imageName,
        "characters": List<dynamic>.from(heroesList.map((x) => x)),
        "placeOfBirthCharacters":
            List<dynamic>.from(placeOfBirthHeroes.map((x) => x)),
      };
}
