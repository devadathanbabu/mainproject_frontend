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
      ),

    );
  }
}
