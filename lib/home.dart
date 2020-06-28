import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 230, 180, 1),
      ),
      endDrawer: Drawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromRGBO(37, 124, 162, 1), Color.fromRGBO(66, 230, 180, 0.5)])),
              child: Stack(
                children: <Widget>[

                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Image(
                      image: AssetImage(
                        'images/Compass1.png',
                      ),),
                  ),

                  Positioned(
                    bottom: 50,
                    right: 20,
                    child: Image(
                      image: AssetImage(
                        'images/sphere1.png',
                      ),),
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image(
                      image: AssetImage(
                        'images/sphere2.png',
                      ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



