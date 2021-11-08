import 'dart:async';

import 'package:dsciku/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Pview extends StatefulWidget {
  const Pview({Key? key}) : super(key: key);
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
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

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  @override
  _PviewState createState() => _PviewState();
}

class _PviewState extends State<Pview> {
  final List<Container> pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Image.asset("assets/img/gdsc.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "GDSC",
                  style: Pview.greyStyle,
                ),
                Text(
                  "google",
                  style: Pview.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "googlegooglegoogle\n"
                  "googlegooglegooglegoogle\n"
                  "googlegooglegoogle",
                  style: Pview.descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFFFC905),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Image.asset("assets/img/gdsc.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "DNJNFJ",
                  style: Pview.whiteStyle,
                ),
                Text(
                  "dfnDKLNFDsn",
                  style: Pview.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Builder(
                    builder: (ctx) => RaisedButton(
                          onPressed: () {
                            Navigator.of(ctx).pushNamed('/q');
                          },
                          child: Text("qr"),
                        ))
              ],
            ),
          )
        ],
      ),
    ),
  ];
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
        fullTransitionValue: 900,
        waveType: WaveType.liquidReveal,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.7,
      ),
    );
  }
}
