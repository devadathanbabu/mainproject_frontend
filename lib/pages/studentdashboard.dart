import 'package:flutter/material.dart';

class studdash extends StatefulWidget {
  const studdash({super.key});

  @override
  State<studdash> createState() => _studdashState();
}

class _studdashState extends State<studdash> {
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
