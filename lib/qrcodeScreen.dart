import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrcodeScreen extends StatefulWidget {
  const QrcodeScreen({Key? key}) : super(key: key);

  @override
  _QrcodeScreenState createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends State<QrcodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Done"),
      ),
    );
  }
}
