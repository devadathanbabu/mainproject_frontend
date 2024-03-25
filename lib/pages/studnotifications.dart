import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:mainproject/service/fileservice.dart';
import 'package:permission_handler/permission_handler.dart';


class StudNotification extends StatefulWidget {
  const StudNotification({Key? key}) : super(key: key);

  @override
  State<StudNotification> createState() => _StudNotificationState();
}

class _StudNotificationState extends State<StudNotification> {
  List<Map<String, dynamic>> fileList = []; // List to store fetched files

  @override
  void initState() {
    super.initState();
    fetchFileList();
    checkStoragePermission();
  }

  Future<void> checkStoragePermission() async {
    PermissionStatus status = await Permission.storage.status;
    if (!status.isGranted) {
      // Request permission
      status = await Permission.storage.request();
      if (!status.isGranted) {
        // Permission denied, handle accordingly
      }
    }
  }


  Future<void> fetchFileList() async {
    try {
      // Call the getFileList() function from your service file
      fileList = await FileUploadService(baseUrl: "http://192.168.4.9:3000/api/files/").getFileList();
      setState(() {});
    } catch (e) {
      print('Error fetching file list: $e');
      // Handle error if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFf222222),
        appBar: AppBar(
          title: Text(
            "EDUCONNECT",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF222222),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: fileList.isEmpty
              ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching files
              : ListView.builder(
            itemCount: fileList.length,
            itemBuilder: (context, index) {
              final file = fileList[index];
              return Card(
                child: ListTile(
                  title: Text(file['name'] ?? 'Unnamed'), // Access the file name from the map
                  // Display file details or implement functionality to view file content
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            width: double.infinity,
                            height: 300,
                            child: file['path'] != null && file['path']!.toLowerCase().endsWith('.pdf')
                                ? PDFView(
                              filePath: file['path'], // Access the file path from the map
                              fitPolicy: FitPolicy.WIDTH,
                            )
                                : file['path'] != null && (file['path'].toLowerCase().endsWith('.jpg') ||
                                file['path'].toLowerCase().endsWith('.jpeg') ||
                                file['path'].toLowerCase().endsWith('.png'))
                                ? Image.file(File(file['path'])) // Assuming the file path is a URL for images
                                : Text('Unsupported file format'),
                          ),
                        );
                      },
                    );
                  },

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
