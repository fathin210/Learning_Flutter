import 'package:flutter/material.dart';

class Eps12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack & Align Widget'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black26,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                    child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black26,
                      ),
                    )
                  ],
                ))
              ],
            ),
            ListView(
              children: [
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "hasldasio abdkajsbd avaisfonas asdbajsdb soafioajsfioasb asfansjfkasbh",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.7, 0.9),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.orange,
                child: Text(
                  'INI BUTTON',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
