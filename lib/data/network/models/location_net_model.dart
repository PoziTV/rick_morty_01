// To parse this JSON data, do
//
//     final locationNetModel = locationNetModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:rick_morty_01/data/view/location_model.dart';

LocationNetModel locationNetModelFromJson(String str) => LocationNetModel.fromJson(json.decode(str));

String locationNetModelToJson(LocationNetModel data) => json.encode(data.toJson());

class LocationNetModel {
  LocationNetModel({
    required this.succeeded,
    required this.message,
    required this.error,
    required this.data,
  });

  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final LocationModel data;

  factory LocationNetModel.fromJson(Map<String, dynamic> json) => LocationNetModel(
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    data: LocationModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": data.toJson(),
  };
}




