
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mainproject/pages/adminLogin.dart';
import 'package:mainproject/pages/studentLogin.dart';
import 'package:mainproject/pages/teacherlogin.dart';

class menuPage extends StatefulWidget {
  const menuPage({Key? key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  final List<String> imageUrls = [
    'assets/fisat.jpg',
    'assets/21-years.jpg',
    'assets/naac1.jpg'// Add more image paths as needed
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFF222222),
        appBar: AppBar(
          title: Text(
            "EDUCONNECT",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFF222222),
          actions:[
            PopupMenuButton(
            icon: Icon(Icons.person,color: Colors.white,),
            color: Color(0xFF222222),
            itemBuilder: (context)=>[
              PopupMenuItem(
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Login",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                                textAlign: TextAlign.center,),
                  )),
              PopupMenuItem(
                value: 1,
                //
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xFF1C0DCC).withOpacity(0.8),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          side: BorderSide(
                          color: Color(0xFF000000).withOpacity(0.8), // Change this to your desired stroke color
                          width: 2, // Change this to adjust the stroke width
                        ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>adminLog()));
                          // Implement action for Button 1
                        },
                        child: Text('Admin'),
                      ),
                    ),
                  ),
              ),
              PopupMenuItem(
                value: 2,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1C0DCC).withOpacity(0.8),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          side: BorderSide(
                            color: Color(0xFF000000).withOpacity(0.8), // Change this to your desired stroke color
                            width: 2, // Change this to adjust the stroke width
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>studLog()));
                          // Implement action for Button 2
                        },
                        child: Text('Student'),
                      ),
                    ),
                  ),
              ),
              PopupMenuItem(
                value: 3,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1C0DCC).withOpacity(0.8),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          side: BorderSide(
                            color: Color(0xFF000000).withOpacity(0.8), // Change this to your desired stroke color
                            width: 2, // Change this to adjust the stroke width
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>teacherLog()));
                        },
                        child: Text('Faculty'),
                      ),
                    ),
                  ),
              ),
            ],
            ),
          ]
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFF222222),
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        aspectRatio: double.infinity,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        onPageChanged: (index,_) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: imageUrls.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 0.6, // Change #4: Adjusted bottom property to position dots
                      left: 0,
                      right: 0,
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageUrls.map((url) {
                          int index = imageUrls.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index ? Colors.white : Colors.grey,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
