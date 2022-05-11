// To parse this JSON data, do
//
//     final latestModel = latestModelFromJson(jsonString);

import 'dart:convert';

List<LatestModel> latestModelFromJson(String str) => List<LatestModel>.from(json.decode(str).map((x) => LatestModel.fromJson(x)));

String latestModelToJson(List<LatestModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LatestModel {
  LatestModel({
    required this.id,
    required this.latest,
    required this.latestImg,
    required this.description,
    required this.storyId,
    this.v,
  });

  String id;
  String latest;
  String latestImg;
  String description;
  String storyId;
  int ? v;

  factory LatestModel.fromJson(Map<String, dynamic> json) => LatestModel(
    id: json["_id"],
    latest: json["latest"],
    latestImg: json["latestImg"],
    description: json["description"],
    storyId: json["story_id"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "latest": latest,
    "latestImg": latestImg,
    "description": description,
    "story_id": storyId,
    "__v": v,
  };
}
