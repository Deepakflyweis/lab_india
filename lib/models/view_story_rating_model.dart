
// To parse this JSON data, do
//
//     final storyRatingModel = storyRatingModelFromJson(jsonString);

import 'dart:convert';

List<StoryRatingModel> storyRatingModelFromJson(String str) => List<StoryRatingModel>.from(json.decode(str).map((x) => StoryRatingModel.fromJson(x)));

String storyRatingModelToJson(List<StoryRatingModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StoryRatingModel {
  StoryRatingModel({
    required this.id,
    required this.review,
    required this.rating,
    required this.active,
    required this.modifiedOn,
      this.story,
    required this.user,
    this.v,
  });

  String id;
  String review;
  int rating;
  bool active;
  DateTime modifiedOn;
  Story ? story;
  User user;
  int ? v;

  factory StoryRatingModel.fromJson(Map<String, dynamic> json) => StoryRatingModel(
    id: json["_id"],
    review: json["review"],
    rating: json["rating"],
    active: json["active"],
    modifiedOn: DateTime.parse(json["modifiedOn"]),
    story: json["story"] == null ? null : Story.fromJson(json["story"]),
    user: User.fromJson(json["user"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "review": review,
    "rating": rating,
    "active": active,
    "modifiedOn": modifiedOn.toIso8601String(),
    "story": story == null ? null : story!.toJson(),
    "user": user.toJson(),
    "__v": v,
  };
}

class Story {
  Story({
    required this.id,
    required this.title,
    required this.description,
    required this.storyImg,
    required this.storyAudio,
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
  String story;
  DateTime createdAt;
  DateTime updatedAt;
  int ? v;

  factory Story.fromJson(Map<String, dynamic> json) => Story(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    storyImg: json["storyImg"],
    storyAudio: json["storyAudio"],
    story: json["story"],
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
    "story": story,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class User {
  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    this.relationship,
    this.percentage,
    this.numberofchildren,
    this.profilepicture,
    this.childage,
    this.childgender,
    this.country,
    this.city,
    this.state,
    this.pincode,
    this.street1,
    this.street2,
    this.email,
    this.phone,
    this.isVerified,
    this.subscriber,
    this.v,
  });

  String id;
  String firstname;
  String lastname;
  String ? relationship;
  int ? percentage;
  String ? numberofchildren;
  String ? profilepicture;
  int ? childage;
  String ? childgender;
  String ? country;
  String ? city;
  String ? state;
  int ? pincode;
  String ? street1;
  String ?street2;
  String ? email;
  int ? phone;
  bool ? isVerified;
  bool ? subscriber;
  int ? v;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    relationship: json["relationship"],
    percentage: json["percentage"],
    numberofchildren: json["numberofchildren"],
    profilepicture: json["profilepicture"],
    childage: json["childage"],
    childgender: json["childgender"],
    country: json["country"],
    city: json["city"],
    state: json["state"],
    pincode: json["pincode"],
    street1: json["street1"],
    street2: json["street2"],
    email: json["email"],
    phone: json["phone"],
    isVerified: json["isVerified"],
    subscriber: json["subscriber"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "firstname": firstname,
    "lastname": lastname,
    "relationship": relationship,
    "percentage": percentage,
    "numberofchildren": numberofchildren,
    "profilepicture": profilepicture,
    "childage": childage,
    "childgender": childgender,
    "country": country,
    "city": city,
    "state": state,
    "pincode": pincode,
    "street1": street1,
    "street2": street2,
    "email": email,
    "phone": phone,
    "isVerified": isVerified,
    "subscriber": subscriber,
    "__v": v,
  };
}
