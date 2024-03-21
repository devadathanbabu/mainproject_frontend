// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

import 'dart:convert';

List<Result> resultFromJson(String str) => List<Result>.from(json.decode(str).map((x) => Result.fromJson(x)));

String resultToJson(List<Result> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Result {
  String id;
  UserId userId;
  String semester;
  String sub1;
  String sub2;
  String sub3;
  String sub4;
  String sub5;
  String sub6;
  String sub7;
  int v;

  Result({
    required this.id,
    required this.userId,
    required this.semester,
    required this.sub1,
    required this.sub2,
    required this.sub3,
    required this.sub4,
    required this.sub5,
    required this.sub6,
    required this.sub7,
    required this.v,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    userId: UserId.fromJson(json["userId"]),
    semester: json["semester"],
    sub1: json["sub1"],
    sub2: json["sub2"],
    sub3: json["sub3"],
    sub4: json["sub4"],
    sub5: json["sub5"],
    sub6: json["sub6"],
    sub7: json["sub7"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userId": userId.toJson(),
    "semester": semester,
    "sub1": sub1,
    "sub2": sub2,
    "sub3": sub3,
    "sub4": sub4,
    "sub5": sub5,
    "sub6": sub6,
    "sub7": sub7,
    "__v": v,
  };
}

class UserId {
  String name;
  String admissionNo;
  String branch;

  UserId({
    required this.name,
    required this.admissionNo,
    required this.branch,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
    name: json["name"],
    admissionNo: json["admissionNo"],
    branch: json["branch"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "admissionNo": admissionNo,
    "branch": branch,
  };
}
