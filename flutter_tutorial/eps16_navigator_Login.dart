import 'package:flutter/material.dart';
import 'package:hello_world/flutter_tutorial/eps16_navigator_main.dart';

class Eps16Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Eps16Main();
            }));
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
