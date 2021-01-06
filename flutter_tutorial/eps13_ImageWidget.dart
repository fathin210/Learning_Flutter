import 'package:flutter/material.dart';

class Eps13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: ListView(children: [
            Text(
              'Lisa ❤❤',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.black,
              width: 250,
              height: 250,
              child: Image(
                image: NetworkImage(
                    'https://awsimages.detik.net.id/community/media/visual/2018/11/28/7536ed5f-315b-47c8-8289-d8122469d5fe_43.png?w=700&q=90'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.black,
              width: 250,
              height: 250,
              child: Image(
                image: AssetImage('images/Lisa.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
