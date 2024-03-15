// To parse this JSON data, do
//
//     final fileupload = fileuploadFromJson(jsonString);

import 'dart:convert';

List<Fileupload> fileuploadFromJson(String str) => List<Fileupload>.from(json.decode(str).map((x) => Fileupload.fromJson(x)));

String fileuploadToJson(List<Fileupload> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Fileupload {
  String id;
  String filename;
  String path;
  int v;

  Fileupload({
    required this.id,
    required this.filename,
    required this.path,
    required this.v,
  });

  factory Fileupload.fromJson(Map<String, dynamic> json) => Fileupload(
    id: json["_id"],
    filename: json["filename"],
    path: json["path"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "filename": filename,
    "path": path,
    "__v": v,
  };
}
