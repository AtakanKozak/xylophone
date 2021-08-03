import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

class DrumMachine extends StatefulWidget {
  @override
  _DrumMachineState createState() => _DrumMachineState();
}

class _DrumMachineState extends State<DrumMachine> {
  bool playerCase;
  var audioCache1 = AudioCache();
  var audioCache2 = AudioCache();
  var audioCache3 = AudioCache();
  var audioCache4 = AudioCache();
  var audioCache = AudioCache();
  AudioPlayer advancedPlayer1;
  AudioPlayer advancedPlayer2;
  AudioPlayer advancedPlayer3;
  AudioPlayer advancedPlayer4;
  bool isPause1 = true;
  bool isPause2 = true;
  bool isPause3 = true;
  bool isPause4 = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  void _stopFile() {
    advancedPlayer1.stop(); // stop the file like this
  }

  void initPlayer() {
    advancedPlayer1 = new AudioPlayer();
    advancedPlayer2 = new AudioPlayer();
    advancedPlayer3 = new AudioPlayer();
    advancedPlayer4 = new AudioPlayer();

    audioCache1 = new AudioCache(fixedPlayer: advancedPlayer1);
    audioCache2 = new AudioCache(fixedPlayer: advancedPlayer2);
    audioCache3 = new AudioCache(fixedPlayer: advancedPlayer3);
    audioCache4 = new AudioCache(fixedPlayer: advancedPlayer4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            moveToLastScreen();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: Text(
          "Drum Machine",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF607D8B), //change your color here
        ),
        backgroundColor: Color(0xFF60B900),
      ),
      body: Container(
        color: Color(0xFFECEFF1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/kick1.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/kick3.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/kick2.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/kick4.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/snare1.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/snare2.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/snare3.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          audioCache.play("sound/snare4.wav");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.drum,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          if (isPause1 == true) {
                            audioCache1.play("sound/sample1.wav");
                            print("çalıştır");
                            setState(() {
                              isPause1 = false;
                            });

                          } else {
                            advancedPlayer1.stop();
                            print("durdur");
                            setState(() {
                              isPause1 = true;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              isPause1 == false
                                  ?FontAwesomeIcons.stop
                              :FontAwesomeIcons.creativeCommonsSampling,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          if (isPause2 == true) {
                            audioCache2.play("sound/sample2.wav");
                            print("çalıştır");
                            setState(() {
                              isPause2 = false;
                            });

                          } else {
                            advancedPlayer2.stop();
                            print("durdur");
                            setState(() {
                              isPause2 = true;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              isPause2 ==false
                                  ?FontAwesomeIcons.stop
                              :FontAwesomeIcons.creativeCommonsSampling,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          if (isPause3 == true) {

                            audioCache3.play("sound/sample3.wav");
                            print("çalıştır");
                            setState(() {
                              isPause3 = false;
                            });

                          } else {
                            advancedPlayer3.stop();
                            print("durdur");
                            setState(() {
                              isPause3 = true;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              isPause3 == false
                                  ?FontAwesomeIcons.stop
                              :FontAwesomeIcons.creativeCommonsSampling,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          if (isPause4 == true) {
                            audioCache4.play("sound/sample4.wav");
                            print("çalıştır");
                            setState(() {
                              isPause4 = false;
                            });
                          } else {
                            advancedPlayer4.stop();
                            print("durdur");
                            setState(() {
                              isPause4 = true;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF60B900),
                          ),
                          height: 25.h,
                          width: 20.w,
                          child: Center(
                            child: Icon(
                              isPause4 == false
                              ?FontAwesomeIcons.stop
                              :FontAwesomeIcons.creativeCommonsSampling,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moveToLastScreen() {
    advancedPlayer1.stop();
    advancedPlayer2.stop();
    advancedPlayer3.stop();
    advancedPlayer4.stop();
    Navigator.pop(context);
  }
}
