// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

List<CategoriesModel> categoriesModelFromJson(String str) => List<CategoriesModel>.from(json.decode(str).map((x) => CategoriesModel.fromJson(x)));

String categoriesModelToJson(List<CategoriesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoriesModel {
  CategoriesModel({
    required this.id,
    required this.category,
    required this.categoryImg,
    required this.v,
  });

  String id;
  String category;
  String categoryImg;
  int v;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
    id: json["_id"],
    category: json["category"],
    categoryImg: json["CategoryImg"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "category": category,
    "CategoryImg": categoryImg,
    "__v": v,
  };
}
