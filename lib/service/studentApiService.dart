import 'dart:convert';

import 'package:http/http.dart' as http;

class studentApiService{
  Future<dynamic> sendData(
  String name,
  String admissionNo,
  String branch,
  String dob,
  String gender,
  String address,
  String phoneNo,
  String alternatePhoneNo,
  String email,
  String password) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.208.9:3000/api/student/signup");
    var response=await client.post(apiurl,
    headers: <String,String> {
    "Content-Type" : "application/json; charset=UTF-8"
    },
    body: jsonEncode(<String,String>
        {
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

    })
    );
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed to send data");
    }
  }

  Future<dynamic> studlogin(
      String email,
      String password) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.208.9:3000/api/student/signin");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "email": email,
          "password": password

        }
        )
    );
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed to send data");
    }

  }





}