import 'package:flutter/material.dart';

class Eps20 extends StatefulWidget {
  @override
  _Eps20State createState() => _Eps20State();
}

class _Eps20State extends State<Eps20> {
  TextEditingController teks = TextEditingController();
  bool visibility = true;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text('Login', style: TextStyle(color: Colors.black)),
          ),
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  obscureText: visibility,
                  controller: teks,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (visibility) {
                            icon = Icons.visibility;
                            visibility = false;
                          } else {
                            icon = Icons.visibility_off;
                            visibility = true;
                          }
                        });
                      },
                      icon: Icon(icon),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Text(teks.text),
              RaisedButton(
                onPressed: () {},
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
