import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../service/resultservice.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({required Key key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();
  TextEditingController txt7 = TextEditingController();
  TextEditingController txt8 = TextEditingController();
  TextEditingController txt9 = TextEditingController();

  final logger = Logger();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void addResult(BuildContext context) async {
    logger.i('Sending student data...');
    try {
      final response = await ResultApiService().addResult(
        txt1.text,
        txt2.text,
        txt3.text,
        txt4.text,
        txt5.text,
        txt6.text,
        txt7.text,
        txt8.text,
        txt9.text,
      );
      logger.i('Response received: $response');
      if (response["status"] == "success") {
        logger.i("Successfully added");
        showCustomSnackBar('Successfully added');
      } else {
        logger.e("Error: ${response["error"]}");
        showCustomSnackBar('Error: ${response["error"]}');
      }
    } catch (e) {
      logger.e('Error sending student data: $e');
      showCustomSnackBar('Error sending student data: $e');
    }
  }

  void showCustomSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2), // Adjust duration as needed
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txt1,
                  decoration: InputDecoration(
                    hintText: "Enter AdmissionNo",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "AdmissionNo",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt2,
                  decoration: InputDecoration(
                    hintText: "Enter Semester",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Semester",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(height: 10,),
                TextField(
                  controller: txt3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject1",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject1",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject2",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject2",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt5,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject3",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject3",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt6,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject4",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject4",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txt7,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject5",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject5",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txt8,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject6",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject6",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt9,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Mark of Subject7",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Subject7",
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 600,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1C0DCC).withOpacity(0.8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed:()=> addResult(context),
                    child: Text("Add Student Result"),
                  ),
                ),
                SizedBox(height: 60,),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back to menu",
                    style: TextStyle(color: Colors.white38),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
