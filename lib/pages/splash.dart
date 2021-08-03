import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xylophone/pages/mainmenu.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainMenu()));
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.red, accentColor: Colors.yellowAccent),
        home: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Color(0xFF60b900)), //backgroundcolor
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/namelogooo.png",
                              height: 120,
                              width: 120,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "welcome to xylophonix",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 5.h,
                                  fontFamily: "Niveau",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
