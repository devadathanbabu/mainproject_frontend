import 'package:flutter/material.dart';

class studadd extends StatefulWidget {
  const studadd({super.key});

  @override
  State<studadd> createState() => _studaddState();
}
class _studaddState extends State<studadd> {
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
                  // controller: txt1,
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
                  // controller: txt2,
                  decoration: InputDecoration(
                      hintText: "Enter AdmissionNo",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "AdmissionNo",
                      border: OutlineInputBorder()
                  ),
                  style: TextStyle(color: Colors.white),
                ),
          
                SizedBox(height: 10,),
                TextField(
                  // controller: txt3,
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
                  // controller: txt4,
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
                  // controller: txt5,
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
                  // controller: txt6,
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
                  // controller: txt6,
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
                  // controller: txt6,
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
                  // controller: txt6,
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
                  // controller: txt6,
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
                        onPressed: (){},
                        child: Text("Add Student Details"))),
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
