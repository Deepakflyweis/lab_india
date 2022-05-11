// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.fullName,
    required this.relationship,
    required this.percentage,
    required this.numberofchildren,
    this.profilepicture,
    required this.childage,
    required this.childgender,
    required this.country,
    required this.city,
    required this.state,
    required this.pincode,
    required this.street1,
    required this.street2,
    required this.email,
    required this.phone,
    required this.id,
    required this.card,
    required this.v,
  });

  FullName fullName;
  String relationship;
  int percentage;
  String numberofchildren;
  dynamic profilepicture;
  int childage;
  String childgender;
  String country;
  String city;
  String state;
  int pincode;
  String street1;
  String street2;
  String email;
  int phone;
  String id;
  List<dynamic> card;
  int v;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    fullName: FullName.fromJson(json["fullName"]),
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
    id: json["_id"],
    card: List<dynamic>.from(json["card"].map((x) => x)),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName.toJson(),
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
    "_id": id,
    "card": List<dynamic>.from(card.map((x) => x)),
    "__v": v,
  };
}

class FullName {
  FullName({
    required this.firstname,
    required this.lastname,
  });

  String firstname;
  String lastname;

  factory FullName.fromJson(Map<String, dynamic> json) => FullName(
    firstname: json["Firstname"],
    lastname: json["Lastname"],
  );

  Map<String, dynamic> toJson() => {
    "Firstname": firstname,
    "Lastname": lastname,
  };
}
