import 'package:flutter/material.dart';

class Eps8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Text Style'),
        ),
        body: Center(
          child: Text(
            'ini adalah text',
            style: TextStyle(
                fontFamily: "crashlanding-bb",
                fontSize: 40,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationThickness: 4,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
