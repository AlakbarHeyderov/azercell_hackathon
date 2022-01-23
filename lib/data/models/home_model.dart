// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HomeModel> homeModelFromJson(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromJson(x)));

String homeModelToJson(List<HomeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeModel {
  HomeModel({
    required this.title,
    required this.items,
  });

  String title;
  List<Item> items;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        title: json["title"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.upvotes,
    required this.description,
    required this.companyTitle,
  });

  int id;
  String title;
  String imageUrl;
  int upvotes;
  String description;
  String companyTitle;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        title: json["title"],
        imageUrl: json["imageUrl"] == null ? 'null' : json["imageUrl"],
        upvotes: json["upvotes"],
        description: json["description"] == null ? 'null' : json["description"],
        companyTitle:
            json["companyTitle"] == null ? 'null' : json["companyTitle"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "imageUrl": imageUrl == null ? null : imageUrl,
        "upvotes": upvotes,
        "description": description == null ? null : description,
        "companyTitle": companyTitle == null ? null : companyTitle,
      };
}
