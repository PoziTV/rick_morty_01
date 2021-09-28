// import 'package:rick_morty_01/data/network/models/enum_values.dart';
import 'package:rick_morty_01/data/view/measurements_model.dart';
import 'package:rick_morty_01/data/view/micro_universum_model.dart';

class Location {
  Location({
    required this.id,
    required this.name,
    required this.type,
    required this.measurements,
    required this.about,
    required this.imageName,
    required this.characters,
    required this.placeOfBirthCharacters,
  });

  final String id;
  final String name;
  final Type? type;
  final Measurements? measurements;
  final String about;
  final String imageName;
  final List<dynamic> characters;
  final List<dynamic> placeOfBirthCharacters;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    name: json["name"],
    type: typeValues.map[json["type"]],
    measurements: measurementsValues.map[json["measurements"]],
    about: json["about"],
    imageName: json["imageName"],
    characters: List<dynamic>.from(json["characters"].map((x) => x)),
    placeOfBirthCharacters: List<dynamic>.from(json["placeOfBirthCharacters"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": typeValues.reverse[type],
    "measurements": measurementsValues.reverse[measurements],
    "about": about,
    "imageName": imageName,
    "characters": List<dynamic>.from(characters.map((x) => x)),
    "placeOfBirthCharacters": List<dynamic>.from(placeOfBirthCharacters.map((x) => x)),
  };
}