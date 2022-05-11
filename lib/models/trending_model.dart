// To parse this JSON data, do
//
//     final trendingModel = trendingModelFromJson(jsonString);

import 'dart:convert';

List<TrendingModel> trendingModelFromJson(String str) => List<TrendingModel>.from(json.decode(str).map((x) => TrendingModel.fromJson(x)));

String trendingModelToJson(List<TrendingModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TrendingModel {
  TrendingModel({
    required this.id,
    required this.trending,
    required this.trendingImg,
    required this.description,
    required this.storyId,
    this.v,
  });

  String id;
  String trending;
  String trendingImg;
  String description;
  String storyId;
  int ? v;

  factory TrendingModel.fromJson(Map<String, dynamic> json) => TrendingModel(
    id: json["_id"],
    trending: json["trending"],
    trendingImg: json["trendingImg"],
    description: json["description"],
    storyId: json["story_id"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "trending": trending,
    "trendingImg": trendingImg,
    "description": description,
    "story_id": storyId,
    "__v": v,
  };
}
