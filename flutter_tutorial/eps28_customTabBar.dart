import 'package:flutter/material.dart';

class Eps28 extends StatelessWidget {
  TabBar mytab = TabBar(
    labelColor: Colors.black,
    unselectedLabelColor: Colors.white,
    indicator: BoxDecoration(
        color: Colors.red,
        border: Border(bottom: BorderSide(color: Colors.black, width: 2))),
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
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TabBar"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(mytab.preferredSize.height),
              child: Container(color: Colors.orange, child: mytab)),
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
