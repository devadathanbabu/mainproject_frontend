import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class FileUploadService {
  final String baseUrl;

  FileUploadService({required this.baseUrl});

  Future<void> uploadFile(String filePath) async {
    try {
      var apiurl = Uri.parse('$baseUrl/uploadFile');
      var request = http.MultipartRequest('POST', apiurl);

      // Add file
      request.files.add(await http.MultipartFile.fromPath('file', filePath));

      // Send the request
      var response = await request.send();

      // Check the status code of the response
      if (response.statusCode == 200) {
        print('File uploaded successfully');
      } else {
        throw Exception('Failed to upload file');
      }
    } catch (e) {
      // Handle any errors that occur during the process
      print('Error: $e');
      throw Exception('Failed to upload file');
    }
  }

  Future<List<Map<String, dynamic>>> getFileList() async {
    try {
      var apiurl = Uri.parse('$baseUrl http://192.168.52.9:3000/api/files/fileviewing');
      var response = await http.get(apiurl);

      // Check the status code of the response
      if (response.statusCode == 200) {
        // Decode the response body
        var responseBody = response.body;
        List<dynamic> jsonData = jsonDecode(responseBody);

        // Convert the data to a list of maps
        List<Map<String, dynamic>> fileList = [];
        for (var item in jsonData) {
          fileList.add(Map<String, dynamic>.from(item));
        }

        return fileList;
      } else {
        throw Exception('Failed to fetch file list');
      }
    } catch (e) {
      // Handle any errors that occur during the process
      print('Error: $e');
      throw Exception('Failed to fetch file list');
    }
  }
}
