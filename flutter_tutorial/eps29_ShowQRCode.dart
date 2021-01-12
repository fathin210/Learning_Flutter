import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Eps29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: "https://www.google.com",
          size: 300,
          backgroundColor: Colors.black,
          foregroundColor: Colors.yellow,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(20),
          version: 5,
        ),
      ),
    );
  }
}
