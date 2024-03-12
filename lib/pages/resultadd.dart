import 'package:flutter/material.dart';

class resultpage extends StatefulWidget {
  const resultpage({super.key});

  @override
  State<resultpage> createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
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
      ),

    );
  }
}
