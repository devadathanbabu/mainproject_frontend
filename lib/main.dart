import 'package:flutter/material.dart';
import 'package:mainproject/pages/dashboard.dart';
import 'package:mainproject/pages/notices.dart';
import 'package:mainproject/pages/studentLogin.dart';

void main()
{
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menuPage(),
    );
  }
}



