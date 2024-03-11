import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class teacherLog extends StatefulWidget {
  const teacherLog({super.key});

  @override
  State<teacherLog> createState() => _teacherLogState();
}

class _teacherLogState extends State<teacherLog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF222222),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FACULTY",
                    style: TextStyle(color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center, // Center "EDUCONNECT" text horizontally
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Color(0xFF222222),
                    child: SvgPicture.asset("assets/teachLog.svg"),
                  ),
                  SizedBox(height: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your eMail",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
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
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        ),

    );
  }
}
