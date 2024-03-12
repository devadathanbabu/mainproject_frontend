import 'package:flutter/material.dart';

class feepage extends StatefulWidget {
  const feepage({super.key});

  @override
  State<feepage> createState() => _feepageState();
}

class _feepageState extends State<feepage> {
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
