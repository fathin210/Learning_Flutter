import 'package:flutter/material.dart';

class Eps9 extends StatefulWidget {
  @override
  _Eps9State createState() => _Eps9State();
}

class _Eps9State extends State<Eps9> {
  List<Widget> widgets = [];
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List dan Listview'),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  child: Text('Tambah Data'),
                  onPressed: () {
                    setState(() {
                      if (counter == 0) {
                        counter = 1;
                      }
                      widgets.add(Text('Data Ke-' + counter.toString()));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Hapus Data'),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                )
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
