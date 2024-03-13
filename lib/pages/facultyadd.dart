import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mainproject/service/teacherApiService.dart';

class facultyadd extends StatefulWidget {
  const facultyadd({super.key});

  @override
  State<facultyadd> createState() => _facultyaddState();
}

class _facultyaddState extends State<facultyadd> {
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  TextEditingController txt3=new TextEditingController();
  TextEditingController txt4=new TextEditingController();
  TextEditingController txt5=new TextEditingController();
  TextEditingController txt6=new TextEditingController();
  TextEditingController txt7=new TextEditingController();
  TextEditingController txt8=new TextEditingController();
  TextEditingController txt9=new TextEditingController();
  TextEditingController txt10=new TextEditingController();

  final logger=Logger();

  void addfaculty() async{
    logger.i('Sending faculty data...');
    try {
      final response=await facultyApiService().sendData(
          txt1.text,
          txt2.text,
          txt3.text,
          txt4.text,
          txt5.text,
          txt6.text,
          txt7.text,
          txt8.text,
          txt9.text,
          txt10.text);
      logger.i('Response received: $response');
      if (response["status"] == "success") {
        logger.i("Successfully added");
      } else {
        logger.e("Error: ${response["error"]}");
      }
    } catch (e) {
      logger.e('Error sending faculty data: $e');
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txt1,
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Name",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt2,
                  decoration: InputDecoration(
                      hintText: "Enter FacultyId",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "FacultyId",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
          
                SizedBox(height: 10,),
                TextField(
                  controller: txt3,
                  decoration: InputDecoration(
                      hintText: "Enter Branch",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Branch",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt4,
                  decoration: InputDecoration(
                      hintText: "Enter DOB",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "DOB",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt5,
                  decoration: InputDecoration(
                      hintText: "Enter Gender",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Gender",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt6,
                  decoration: InputDecoration(
                      hintText: "Enter Address",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Address",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txt7,
                  decoration: InputDecoration(
                      hintText: "Enter PhoneNo",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "PhoneNo",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txt8,
                  decoration: InputDecoration(
                      hintText: "Enter Alternate PhoneNo",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Alternate PhoneNo",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt9,
                  decoration: InputDecoration(
                      hintText: "Enter eMail",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "eMail",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txt10,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Password",
                      border: OutlineInputBorder()
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
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed: addfaculty,
                        child: Text("Add Faculty Details"))),
                SizedBox(height: 60,),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back to menu",
                  style: TextStyle(color: Colors.white38),))
              ],
            ),
          ),
        ),
      ),

    );
  }
}
