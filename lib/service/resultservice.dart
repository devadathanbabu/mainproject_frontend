import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/resultmodel.dart';

class ResultApiService {
  Future<dynamic> addResult(
     String admissionNo,
      String semester,
      String sub1,
      String sub2,
      String sub3,
      String sub4,
      String sub5,
      String sub6,
      String sub7,) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://192.168.208.9:3000/api/result/add"); // Replace "your-api-url" with your actual API endpoint
    try {
      var response = await client.post(
        apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, dynamic>{
          "admissionNo" : admissionNo,
          "semester": semester,
          "sub1": sub1,
          "sub2": sub2,
          "sub3": sub3,
          "sub4": sub4,
          "sub5": sub5,
          "sub6": sub6,
          "sub7": sub7,

        }),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to add result");
      }
    } finally {
      client.close();
    }
  }


  Future<List<Result>> getResults() async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://192.168.208.9:3000/api/result/viewall"); // Replace "your-api-url" with your actual API endpoint
    try {
      var response = await client.get(apiUrl);
      if (response.statusCode == 200) {
        List<dynamic> jsonResults = jsonDecode(response.body);
        return jsonResults.map((json) => Result.fromJson(json)).toList();
      } else {
        throw Exception("Failed to get results");
      }
    } finally {
      client.close();
    }
  }
}
