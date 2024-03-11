import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mainproject/pages/dashboard.dart';

class admindash extends StatefulWidget {
  const admindash({super.key});

  @override
  State<admindash> createState() => _admindashState();
}

class _admindashState extends State<admindash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFf222222),
        appBar: AppBar(title: Text(
          "EDUCONNECT",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),

          backgroundColor: Color(0xFF222222),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
            }, icon: Icon(Icons.home))
          ],
        ),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Color(0xFF222222),
                              child: SvgPicture.asset("assets/students.svg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Student Registration",
                            style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Color(0xFF222222),
                              child: SvgPicture.asset("assets/undraw_educator_re_ju47.svg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Faculty Registration",
                            style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Center(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Color(0xFF222222),
                              child: SvgPicture.asset("assets/notices.svg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Notices",
                              style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Color(0xFF222222),
                              child: SvgPicture.asset("assets/fees.svg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Fees",
                              style: TextStyle(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Color(0xFF222222),
                              child: SvgPicture.asset("assets/result.svg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Result",
                              style: TextStyle(color: Colors.white),),
                          ],
                        ),

                      ],
                    ),
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
