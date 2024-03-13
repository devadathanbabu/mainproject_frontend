// To parse this JSON data, do
//
//     final faculty = facultyFromJson(jsonString);

import 'dart:convert';

List<Faculty> facultyFromJson(String str) => List<Faculty>.from(json.decode(str).map((x) => Faculty.fromJson(x)));

String facultyToJson(List<Faculty> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Faculty {
  String name;
  String facultyId;
  String branch;
  String dob;
  String gender;
  String address;
  String phoneNo;
  String alternatePhoneNo;
  String email;
  String password;

  Faculty({
    required this.name,
    required this.facultyId,
    required this.branch,
    required this.dob,
    required this.gender,
    required this.address,
    required this.phoneNo,
    required this.alternatePhoneNo,
    required this.email,
    required this.password,
  });

  factory Faculty.fromJson(Map<String, dynamic> json) => Faculty(
    name: json["name"],
    facultyId: json["facultyId"],
    branch: json["branch"],
    dob: json["dob"],
    gender: json["gender"],
    address: json["address"],
    phoneNo: json["phoneNo"],
    alternatePhoneNo: json["alternatePhoneNo"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "facultyId": facultyId,
    "branch": branch,
    "dob": dob,
    "gender": gender,
    "address": address,
    "phoneNo": phoneNo,
    "alternatePhoneNo": alternatePhoneNo,
    "email": email,
    "password": password,
  };
}
