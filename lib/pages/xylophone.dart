import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';
import 'package:xylophone/ad_helper.dart';


const AndroidNotificationChannel channel= AndroidNotificationChannel(
    "high_importance_channel",
    "High importance Notifications",
    "This channel is used for important notifications",
    importance: Importance.high,
  playSound: true
);

Future<void>_firebaseMessagingBackgroundHandler(RemoteMessage message)async{
  await Firebase.initializeApp();
  print("A bg message just showed up : ${message.messageId}");
}



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);


  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
alert: true,
    badge: true,
    sound: true,
  );

  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  BannerAd _ad;
  bool isloaded;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message){
      RemoteNotification notification =message.notification;
      AndroidNotification android=message.notification?.android;
      if(notification !=null && android !=null){

      }
      FirebaseMessaging.onMessage.listen((RemoteMessage message ){
        print("A new onMessageOpenedApp event was published!");
        RemoteNotification notification=message.notification,
        AndroidNotification; android=message.notification?.android;
        if(notification !=null&& android!=null){
          showDialog(context: context, builder: (_){
            return AlertDialog(
             title: Text(notification.title),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notification.body),
                  ],
                ),
              ),
            );
          });
        }
          NotificationDetails(
          android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channel.description,
          importance: Importance.high,
          color: Colors.blue,
          playSound: true,
          icon: "@mipmap/ic_launcher"
          )
          );
        }
      );
    });

    _ad = BannerAd(
        adUnitId: AdHelper.bannerAdUnitId,
        request: AdRequest(),
        size: AdSize.banner,
        listener: BannerAdListener(onAdLoaded: (_) {
          setState(() {
            isloaded = true;
          });
        }, onAdFailedToLoad: (_, error) {
          print("Ad Failed to load with error:$error");
        }));
    _ad.load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  Widget checkForAd() {
    if (isloaded == true) {
      return Container(
        child: AdWidget(
          ad: _ad,
        ),
        width: _ad.size.width.toDouble(),
        height: _ad.size.height.toDouble(),
        alignment: Alignment.center,
      );
    } else {
      return CircularProgressIndicator();
    }
  }

  final player = AudioCache();

  Color color1 = Color(0xFF1976D2);
  Color color2 = Color(0xFF1E88E5);
  Color color3 = Color(0xFF2196F3);
  Color color4 = Color(0xFF42A5F5);
  Color color5 = Color(0xFF64B5F6);
  Color color6 = Color(0xFF90CAF9);
  Color color7 = Color(0xFFBBDEFB);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    player.play('sound/note1.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "DO    C",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note2.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "RE     D",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color2,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note3.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Mİ     E",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note4.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "FA     F",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color4,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note5.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "SOL   G",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note6.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "LA     A",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color6,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    player.play('sound/note7.wav');
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Sİ     B",
                      style: TextStyle(fontSize: 20, fontFamily: "Niveau"),
                    )),
                    width: double.infinity,
                    height: 10.h,
                    color: color7,
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        heroTag: "btn1",
                        child: Icon(
                          Icons.color_lens_outlined,
                          size: 25,
                        ),
                        backgroundColor: Colors.red,
                        onPressed: () {
                          setState(() {
                            color1 = Color(0xFFD32F2F);
                            color2 = Color(0xFFE53935);
                            color3 = Color(0xFFF44336);
                            color4 = Color(0xFFEF5350);
                            color5 = Color(0xFFE57373);
                            color6 = Color(0xffEF9A9A);
                            color7 = Color(0xFFFFCDD2);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        heroTag: "btn2",
                        child: Icon(
                          Icons.color_lens_outlined,
                          size: 25,
                        ),
                        backgroundColor: Colors.green,
                        onPressed: () {
                          setState(() {
                            color1 = Color(0xFF388E3C);
                            color2 = Color(0xFF43A047);
                            color3 = Color(0xFF4CAF50);
                            color4 = Color(0xFF66BB6A);
                            color5 = Color(0xFF81C784);
                            color6 = Color(0xFFA5D6A7);
                            color7 = Color(0xFFC8E6C9);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        heroTag: "btn3",
                        child: Icon(
                          Icons.color_lens_outlined,
                          size: 25,
                        ),
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            color1 = Color(0xFF1976D2);
                            color2 = Color(0xFF1E88E5);
                            color3 = Color(0xFF2196F3);
                            color4 = Color(0xFF42A5F5);
                            color5 = Color(0xFF64B5F6);
                            color6 = Color(0xFF90CAF9);
                            color7 = Color(0xFFBBDEFB);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        heroTag: "btn4",
                        child: Icon(
                          Icons.color_lens_outlined,
                          size: 25,
                        ),
                        backgroundColor: Colors.orange,
                        onPressed: () {
                          setState(() {
                            color1 = Color(0xFFF57C00);
                            color2 = Color(0xFFFB8C00);
                            color3 = Color(0xFFFF9800);
                            color4 = Color(0xFFFFA726);
                            color5 = Color(0xFFFFB74D);
                            color6 = Color(0xFFFFCC80);
                            color7 = Color(0xFFFFE0B2);
                          });
                        },
                      ),
                    ],
                  ),checkForAd(),

                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
