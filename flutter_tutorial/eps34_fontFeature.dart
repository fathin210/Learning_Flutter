import 'dart:ui';

import 'package:flutter/material.dart';

class Eps34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Typhography"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Contoh 1"),
              Text(
                "Contoh 2",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 3/2",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('frac')]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
