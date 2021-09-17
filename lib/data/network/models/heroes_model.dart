// To parse this JSON data, do
//
//     final heroesModel = heroesModelFromJson(jsonString);

import 'dart:convert';

HeroesModel heroesModelFromJson(String str) => HeroesModel.fromJson(json.decode(str));

String heroesModelToJson(HeroesModel data) => json.encode(data.toJson());

class HeroesModel {
  HeroesModel({
    required this.totalRecords,
    required this.pages,
    required this.nextPage,
    required this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  final int totalRecords;
  final int pages;
  final int nextPage;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<Datum> data;

  factory HeroesModel.fromJson(Map<String, dynamic> json) => HeroesModel(
    totalRecords: json["totalRecords"],
    pages: json["pages"],
    nextPage: json["nextPage"],
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalRecords": totalRecords,
    "pages": pages,
    "nextPage": nextPage,
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.status,
    required this.about,
    required this.gender,
    required this.race,
    required this.imageName,
    required this.locationId,
    required this.location,
    required this.placeOfBirthId,
    required this.placeOfBirth,
    required this.episodes,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final int status;
  final String about;
  final int gender;
  final String race;
  final String imageName;
  final String locationId;
  final Location location;
  final String? placeOfBirthId;
  final Location? placeOfBirth;
  final List<Episode> episodes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    fullName: json["fullName"],
    status: json["status"],
    about: json["about"],
    gender: json["gender"],
    race: json["race"],
    imageName: json["imageName"],
    locationId: json["locationId"],
    location: Location.fromJson(json["location"]),
    placeOfBirthId: json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
    placeOfBirth: json["placeOfBirth"] == null ? null : Location.fromJson(json["placeOfBirth"]),
    episodes: List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName == null ? null : lastName,
    "fullName": fullName,
    "status": status,
    "about": about,
    "gender": gender,
    "race": race,
    "imageName": imageName,
    "locationId": locationId,
    "location": location.toJson(),
    "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
    "placeOfBirth": placeOfBirth == null ? null : placeOfBirth!.toJson(),
    "episodes": List<dynamic>.from(episodes.map((x) => x.toJson())),
  };
}

class Episode {
  Episode({
    required this.id,
    required this.name,
    required this.season,
    required this.series,
    required this.plot,
    required this.premiere,
    required this.imageName,
    this.characters,
  });

  final String id;
  final String name;
  final int season;
  final int series;
  final String plot;
  final DateTime premiere;
  final String imageName;
  final dynamic characters;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
    id: json["id"],
    name: json["name"],
    season: json["season"],
    series: json["series"],
    plot: json["plot"],
    premiere: DateTime.parse(json["premiere"]),
    imageName: json["imageName"],
    characters: json["characters"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "season": season,
    "series": series,
    "plot": plot,
    "premiere": premiere.toIso8601String(),
    "imageName": imageName,
    "characters": characters,
  };
}

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

enum Measurements { EMPTY, MEASUREMENTS, C_137, PURPLE, THE_137, FLUFFY, TENTACLED }

final measurementsValues = EnumValues({
  "C-137": Measurements.C_137,
  "": Measurements.EMPTY,
  "Измерение подмены": Measurements.FLUFFY,
  "Постапокалиптическое измерение": Measurements.MEASUREMENTS,
  "Вселенная Блендеров": Measurements.PURPLE,
  "Фруппиленд": Measurements.TENTACLED,
  "С-137": Measurements.THE_137
});

enum Type { EMPTY, TYPE, PURPLE, FLUFFY, TENTACLED, STICKY, INDIGO, INDECENT }

final typeValues = EnumValues({
  "": Type.EMPTY,
  "Организация": Type.FLUFFY,
  "Искусственная крошечная вселенная": Type.INDECENT,
  "Созданная реальность": Type.INDIGO,
  "Мир": Type.PURPLE,
  "Здание": Type.STICKY,
  "Планета": Type.TENTACLED,
  "Измерение": Type.TYPE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

   EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
