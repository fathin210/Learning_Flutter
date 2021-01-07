import 'package:flutter/material.dart';

class Eps18 extends StatefulWidget {
  @override
  _Eps18State createState() => _Eps18State();
}

class _Eps18State extends State<Eps18> {
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    insideCard('Menu', Icons.menu),
                    insideCard('Home', Icons.home),
                    insideCard('Camera', Icons.camera),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  widgets.add(card2(
                                      'Example title', 'Example subtitle'));
                                });
                              },
                              icon: Icon(Icons.add),
                              iconSize: 35,
                            ),
                            Text(
                              'Add List',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(children: widgets)
          ],
        ),
      ),
    );
  }

  Card card2(String title, String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      margin: EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\n' + subtitle,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal))
                        ]),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    '20.00',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Flexible insideCard(String teks, IconData icon) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(icon),
              iconSize: 35,
            ),
            Text(
              teks,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
