import 'package:flutter/material.dart';

class facultydash extends StatefulWidget {
  const facultydash({super.key});

  @override
  State<facultydash> createState() => _facultydashState();
}

class _facultydashState extends State<facultydash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(
          "EDUCONNECT",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),

          backgroundColor: Color(0xFF222222),
        ),
      ),
    );
  }
}
