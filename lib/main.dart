import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned(
                bottom: -30,
                left: 0,
                child: Image(
                    image: AssetImage(
                      'images/Vector.png',
                    ))
            ),
            Positioned(
              bottom: -50,
              right: 0,
              child: Image(
                image: AssetImage(
                  'images/Vector1.png',
                ),),
            ),


            Positioned(
                top: 175,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                          width: 98,
                          height: 144,
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('images/Compass1.png'),
                                fit: BoxFit.fitWidth
                            ),
                          ),
                        ),

                        Text('L O K A L E', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(242, 102, 102, 1),
                            fontFamily: 'BigNoodleTitling',
                            fontSize: 45,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ],
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
