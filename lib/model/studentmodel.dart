// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'dart:convert';

List<Student> studentFromJson(String str) => List<Student>.from(json.decode(str).map((x) => Student.fromJson(x)));

String studentToJson(List<Student> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Student {
  String name;
  String admissionNo;
  String branch;
  String dob;
  String gender;
  String address;
  String phoneNo;
  String alternatePhoneNo;
  String email;
  String password;

  Student({
    required this.name,
    required this.admissionNo,
    required this.branch,
    required this.dob,
    required this.gender,
    required this.address,
    required this.phoneNo,
    required this.alternatePhoneNo,
    required this.email,
    required this.password,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
    name: json["name"],
    admissionNo: json["admissionNo"],
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
    "admissionNo": admissionNo,
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
