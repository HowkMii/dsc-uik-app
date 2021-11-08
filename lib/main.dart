import 'package:dsciku/page.dart';
import 'package:dsciku/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/s': (ctx) => Splash(),
        '/p': (ctx) => Pview(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Dsciuk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}
