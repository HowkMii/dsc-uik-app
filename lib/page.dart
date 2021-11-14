import 'dart:async';

import 'package:dsciku/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Pview extends StatefulWidget {
  const Pview({Key? key}) : super(key: key);
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.black87,
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldcoinGreyStylee = TextStyle(
      color: Colors.black87,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
  static const TextStyle whiteStyle = TextStyle(
      fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );
  static const TextStyle boldStylee = TextStyle(
    fontSize: 50.0,
    color: Colors.white10,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );
  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.black87,
    fontSize: 24.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );
  static const TextStyle descriptionWhiteStylee = TextStyle(
    color: Colors.white70,
    fontSize: 24.0,
    fontFamily: "Product Sans",
  );
  static const TextStyle descriptionWhiteStyleee = TextStyle(
    color: Colors.black87,
    fontSize: 24.0,
    fontFamily: "Product Sans",
  );

  @override
  _PviewState createState() => _PviewState();
}

class _PviewState extends State<Pview> {
  final List<Container> pages = [
    Container(
      color: Color(0xFFFFFFFF),
      /*decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF0A0B3B),
          Color(0xFF3F2961),
        ],
      )),*/
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Center(
            child: Image.asset(
              "assets/img/gdsc.png",
              width: 250,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Google ",
                  style: Pview.goldcoinGreyStyle,
                ),
                Text(
                  "Developer Student Clubs IKU",
                  style: Pview.goldcoinGreyStylee,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Student who \n"
                  "to made a difference.\n",
                  style: Pview.descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF000000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Image.asset("assets/img/blackb.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  "We ..e..r..\n"
                  "We S..a..e\n"
                  "We ..r..w ...together\n",
                  style: Pview.descriptionWhiteStylee,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Image.asset("assets/img/whiteb.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  "We L..a..n\n"
                  "We ..h..r.. \n"
                  "We G..o.. ...together\n",
                  style: Pview.descriptionWhiteStyleee,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      width: 1000,
      height: 1000,
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Image.asset(
            "assets/img/scan.png",
            height: 500,
            width: 500,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Builder(
                  builder: (ctx) => FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.of(ctx).pushNamed('/q');
                        },
                        backgroundColor: Colors.black,
                        icon: Icon(
                          Icons.qr_code,
                          size: 30,
                        ),
                        label: Text("Scan", style: TextStyle(fontSize: 24)),
                      )))
        ],
      ),
    ),
  ];

  int p = 0;
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      Timer(const Duration(milliseconds: 5000), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Splash()));
      });
    }

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 500,
        waveType: WaveType.liquidReveal,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.7,
      ),
    );
  }
}
/*
Change: (initialPage) {
          setState(() {
            p = initialPage;
            if (p == 1) {
              Future.delayed(Duration(seconds: 4),
                  () => Navigator.of(context).pushNamed('/q'));
            }
          });
        },*/