import 'dart:math';

import 'package:flutter/material.dart';

class Eps10 extends StatefulWidget {
  @override
  _Eps10State createState() => _Eps10State();
}

class _Eps10State extends State<Eps10> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container Dan Gesture Detector'),
        ),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                duration: Duration(seconds: 1),
                height: 50.0 + random.nextInt(101),
                width: 50.0 + random.nextInt(101),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
