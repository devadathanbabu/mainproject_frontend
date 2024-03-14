import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class noticepage extends StatefulWidget {
  const noticepage({super.key});

  @override
  State<noticepage> createState() => _noticepageState();
}

class _noticepageState extends State<noticepage> {
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
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1C0DCC).withOpacity(0.8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                      onPressed: ()async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['pdf', 'doc', 'docx','jpeg'], // Add more extensions as needed
                        );

                        if (result != null) {
                          String? filePath = result.files.single.path;
                          // Handle the file path accordingly, such as uploading it to a server
                          print('File Path: $filePath');
                        } else {
                          // User canceled the picker
                          print('User canceled the picker');
                        }
                        },
                      child: Text("Browse")))
            ],
          ),
        ),
      ),

    );
  }
}
