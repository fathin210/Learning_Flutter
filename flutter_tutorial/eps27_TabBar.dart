import 'package:flutter/material.dart';

class Eps27 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.star),
              ),
              Tab(
                text: "Ini Opsi\n Tab",
              ),
              Tab(
                child: Image(
                  image: AssetImage("images/fb.png"),
                ),
              ),
              Tab(
                icon: Icon(Icons.mail),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("TAB 1"),
            ),
            Center(
              child: Text("TAB 2"),
            ),
            Center(
              child: Text("TAB 3"),
            ),
            Center(
              child: Text("TAB 4"),
            ),
          ],
        ),
      ),
    );
  }
}
