// To parse this JSON data, do
//
//     final viewStoryModel = viewStoryModelFromJson(jsonString);

import 'dart:convert';

ViewStoryModel viewStoryModelFromJson(String str) => ViewStoryModel.fromJson(json.decode(str));

String viewStoryModelToJson(ViewStoryModel data) => json.encode(data.toJson());

class ViewStoryModel {
  ViewStoryModel({
    required this.id,
    required this.title,
    required this.description,
    required this.storyImg,
    required this.storyAudio,
    required this.letestId,
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
  String letestId;
  bool letest;
  List<Story> story;
  DateTime createdAt;
  DateTime updatedAt;
  int ? v;

  factory ViewStoryModel.fromJson(Map<String, dynamic> json) => ViewStoryModel(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    storyImg: json["storyImg"],
    storyAudio: json["storyAudio"],
    letestId: json["letest_id"],
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
    "letest_id": letestId,
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
