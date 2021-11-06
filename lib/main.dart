import 'package:concentric_transition/clipper.dart';
import 'package:concentric_transition/concentric_transition.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'DSC IKU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DSC IKU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> pages = [
    {
      'image':
          'https://ouch-cdn2.icons8.com/eW02ksQgD03vMcVQHZaqwFtb6reRJTvmEWPbixyFejc/rs:fit:392:392/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTg4/LzdhMzZlMDA3LWM4/OWQtNGVmOC04YjQ1/LTZhZWYzYjMxNGQ2/OC5wbmc.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 38,
        verticalPosition: 0.8,
        colors: [Colors.red, Colors.greenAccent, Colors.yellow, Colors.blue],
        itemBuilder: (index, value) {
          int pageindex = (index % pages.length);
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  pages[pageindex]['image'],
                  width: 300,
                ),
                Text(
                  'We are DSC not GDG',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
