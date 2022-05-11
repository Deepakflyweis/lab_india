// To parse this JSON data, do
//
//     final addRatingModel = addRatingModelFromJson(jsonString);

import 'dart:convert';

AddRatingModel addRatingModelFromJson(String str) => AddRatingModel.fromJson(json.decode(str));

String addRatingModelToJson(AddRatingModel data) => json.encode(data.toJson());

class AddRatingModel {
  AddRatingModel({
    required this.review,
    required this.rating,
    required this.active,
    required this.modifiedOn,
    required this.id,
    required this.story,
    required this.user,
    this.v,
  });

  String review;
  int rating;
  bool active;
  DateTime modifiedOn;
  String id;
  String story;
  String user;
  int ? v;

  factory AddRatingModel.fromJson(Map<String, dynamic> json) => AddRatingModel(
    review: json["review"],
    rating: json["rating"],
    active: json["active"],
    modifiedOn: DateTime.parse(json["modifiedOn"]),
    id: json["_id"],
    story: json["story"],
    user: json["user"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "review": review,
    "rating": rating,
    "active": active,
    "modifiedOn": modifiedOn.toIso8601String(),
    "_id": id,
    "story": story,
    "user": user,
    "__v": v,
  };
}
