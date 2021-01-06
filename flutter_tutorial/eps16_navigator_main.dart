import 'package:flutter/material.dart';
import 'package:hello_world/flutter_tutorial/eps16_navigator_second.dart';

class Eps16Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Second Page'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Eps16Second()));
          },
        ),
      ),
    );
  }
}
