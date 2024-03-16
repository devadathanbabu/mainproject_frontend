import 'package:flutter/material.dart';
import 'package:mainproject/pages/studnotifications.dart';

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
        body: Container(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>StudNotification()));
              }, child: Text("notifications"))
            ],
          ),
        ),
      ),
    );
  }
}
