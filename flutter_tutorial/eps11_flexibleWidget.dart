import 'dart:math';

import 'package:flutter/material.dart';

class Eps11 extends StatefulWidget {
  @override
  _Eps11State createState() => _Eps11State();
}

class _Eps11State extends State<Eps11> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flexible Widget')),
        ),
        body: Column(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        color: Color.fromARGB(255, random.nextInt(266),
                            random.nextInt(266), random.nextInt(266)),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        color: Color.fromARGB(255, random.nextInt(266),
                            random.nextInt(266), random.nextInt(266)),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        color: Color.fromARGB(255, random.nextInt(266),
                            random.nextInt(266), random.nextInt(266)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
