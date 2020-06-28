import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF04ED9A6), Color(0xFF06AD9C4)])),
                child: Stack(
                  children: <Widget>[

                    Positioned(
                        top: 35,
                        left: 15,
                        child: Container(
                            width: 98,
                            height: 144,
                            decoration:
                            BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/Compass1.png'),
                                  fit: BoxFit
                                      .fitWidth),
                            ),
                        ),
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
                      bottom: -20,
                      right: 0,
                      child: Image(
                        image: AssetImage(
                          'images/sphere2.png',
                        ),),
                    ),

                    Positioned(
                      top: 30,
                      right: -10,
                      child: FlatButton(
                        onPressed: openDrawer,
                        child: Icon(
                          Icons.menu,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              FlatButton(
                onPressed: openDrawer,
                child: Icon(
                  Icons.menu,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


