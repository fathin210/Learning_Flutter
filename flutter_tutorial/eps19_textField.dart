import 'package:flutter/material.dart';

class Eps19 extends StatefulWidget {
  @override
  _Eps19State createState() => _Eps19State();
}

class _Eps19State extends State<Eps19> {
  TextEditingController teks = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar TextField'),
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: teks,
                decoration: InputDecoration(hintText: "nama"),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(teks.text)
            ],
          ),
        ),
      ),
    );
  }
}
