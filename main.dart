import 'package:flutter/material.dart';
// import 'package:hello_world/flutter_tutorial/eps10_animaterdContainer_GestureDetector.dart';
import 'package:hello_world/flutter_tutorial/eps9_List_ListView.dart';

void main() {
  runApp(Eps9());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Hello World'),
        ),
        body: Center(child: Text("test")),
      ),
    );
  }
}
