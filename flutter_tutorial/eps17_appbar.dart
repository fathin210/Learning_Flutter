import 'package:flutter/material.dart';

class Eps17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          elevation: 0,
          title: Text(
            'AppBar Example',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
              color: Colors.black,
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlue],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage('assets/pattern.png'),
                  repeat: ImageRepeat.repeat),
            ),
          ),
          bottom: TabBar(
            tabs: [Text('1')],
          ),
        ),
      ),
    );
  }
}
