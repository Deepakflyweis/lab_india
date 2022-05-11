// To parse this JSON data, do
//
//     final trendingStoryModel = trendingStoryModelFromJson(jsonString);

import 'dart:convert';

TrendingStoryModel trendingStoryModelFromJson(String str) => TrendingStoryModel.fromJson(json.decode(str));

String trendingStoryModelToJson(TrendingStoryModel data) => json.encode(data.toJson());

class TrendingStoryModel {
  TrendingStoryModel({
    required this.id,
    required this.title,
    required this.description,
    required this.storyImg,
    required this.storyAudio,
    required this.tradingId,
    required this.letest,
    required this.story,
    required this.createdAt,
    required this.updatedAt,
    this.v,
  });

  String id;
  String title;
  String description;
  String storyImg;
  String storyAudio;
  String tradingId;
  bool letest;
  List<Story> story;
  DateTime createdAt;
  DateTime updatedAt;
  int ? v;

  factory TrendingStoryModel.fromJson(Map<String, dynamic> json) => TrendingStoryModel(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    storyImg: json["storyImg"],
    storyAudio: json["storyAudio"],
    tradingId: json["trading_id"],
    letest: json["letest"],
    story: List<Story>.from(json["story"].map((x) => Story.fromJson(x))),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "description": description,
    "storyImg": storyImg,
    "storyAudio": storyAudio,
    "trading_id": tradingId,
    "letest": letest,
    "story": List<dynamic>.from(story.map((x) => x.toJson())),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class Story {
  Story({
    required this.contentType,
    required this.content,
  });

  String contentType;
  String content;

  factory Story.fromJson(Map<String, dynamic> json) => Story(
    contentType: json["contentType"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "contentType": contentType,
    "content": content,
  };
}
