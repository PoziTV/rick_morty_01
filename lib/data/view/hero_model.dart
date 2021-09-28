import 'package:rick_morty_01/data/alive_status_decoder.dart';
import 'package:rick_morty_01/data/view/episode_model.dart';
import 'package:rick_morty_01/data/view/location_model.dart';

class HeroModel {
  HeroModel({
    required this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    required this.status,
    this.about,
    this.gender,
    this.race,
    required this.imageName,
    this.locationId,
    this.location,
    this.placeOfBirthId,
    this.placeOfBirth,
    required this.episodesList,
  });

  final String id;

  final String? firstName;
  final String? lastName;
  final String? fullName;

  final int? status;
  final String? about;
  final int? gender;
  final String? race;

  final String imageName;

  final String? locationId;
  final LocationModel? location;

  final String? placeOfBirthId;
  final LocationModel? placeOfBirth;

  final List<EpisodeModel> episodesList;

  factory HeroModel.fromJson(Map<String, dynamic> json)

  {
    print('HeroModel.fromJson start ${json["fullName"]}');
    HeroModel HM = HeroModel(
      id: json["id"] ?? '',
      firstName: json["firstName"],
      lastName: json["lastName"],
      fullName: json["fullName"],
      status: json["status"],
      about: json["about"],
      gender: json["gender"],
      race: json["race"],
      imageName: json["imageName"],
      locationId: json["locationId"],
      location: LocationModel.fromJson(json["location"]),
      placeOfBirthId: json["placeOfBirthId"],
      placeOfBirth: json["placeOfBirth"] == null
          ? null
          : LocationModel.fromJson(json["placeOfBirth"]),
      episodesList: List<EpisodeModel>.from(
        json["episodes"]?.map((x) => EpisodeModel.fromJson(x)) ?? [],
      ),
    );

    print('HeroModel.fromJson return ${json["fullName"]}');

    return HM;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "fullName": fullName,
        "status": status,
        "about": about,
        "gender": gender,
        "race": race,
        "imageName": imageName,
        "locationId": locationId,
        "location": location?.toJson() ?? '',
        "placeOfBirthId": placeOfBirthId,
        "placeOfBirth": placeOfBirth?.toJson() ?? '',
        "episodes": List<dynamic>.from(episodesList.map((x) => x.toJson())),
      };
}
