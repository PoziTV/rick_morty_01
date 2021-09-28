// To parse this JSON data, do
//
//     final locationsNetModel = locationsNetModelFromJson(jsonString);

import 'dart:convert';

import 'package:rick_morty_01/data/view/location_model.dart';

LocationsNetModel locationsNetModelFromJson(String str) => LocationsNetModel.fromJson(json.decode(str));

String locationsNetModelToJson(LocationsNetModel data) => json.encode(data.toJson());

class LocationsNetModel {
  LocationsNetModel({
    required this.totalRecords,
    required this.pages,
    required this.nextPage,
    required this.succeeded,
    required this.message,
    required this.error,
    required this.locationsList,
  });

  final int totalRecords;
  final int pages;
  final int nextPage;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<LocationModel> locationsList;

  factory LocationsNetModel.fromJson(Map<String, dynamic> json) => LocationsNetModel(
    totalRecords: json["totalRecords"],
    pages: json["pages"],
    nextPage: json["nextPage"],
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    locationsList: List<LocationModel>.from(json["data"].map((x) => LocationModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalRecords": totalRecords,
    "pages": pages,
    "nextPage": nextPage,
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": List<dynamic>.from(locationsList.map((x) => x.toJson())),
  };
}
