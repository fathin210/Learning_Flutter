import 'package:flutter/material.dart';

class Eps26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      child: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/pattern.png"), fit: BoxFit.cover)),
          child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Belajar Custom Height Appbar",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
      ),
      preferredSize: Size.fromHeight(200),
    ));
  }
}
