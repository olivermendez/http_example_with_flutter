import 'dart:convert';

CatModel catModelFromJson(String str) => CatModel.fromJson(json.decode(str));

String catModelToJson(CatModel data) => json.encode(data.toJson());

class CatModel {
  CatModel({
    required this.id,
    required this.url,
    required this.webpurl,
    required this.x,
    required this.y,
  });

  int id;
  String url;
  String webpurl;
  double x;
  double y;

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        id: json["id"],
        url: json["url"],
        webpurl: json["webpurl"],
        x: json["x"].toDouble(),
        y: json["y"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "webpurl": webpurl,
        "x": x,
        "y": y,
      };
}
