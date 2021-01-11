import 'package:flutter/material.dart';

class Eps24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                'dribbble',
                style: TextStyle(
                    fontFamily: "Pacifico", fontSize: 30, color: Colors.white),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF3E9EE),
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFF4891))),
                            labelText: "Email : ",
                            labelStyle: TextStyle(
                                color: Color(0xFFFF4891),
                                fontWeight: FontWeight.bold)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFF4891))),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Color(0xFFFF4891),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(color: Color(0xFFFF4891)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Colors.purple, Colors.pink],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white),
                                ),
                              ),
                              onTap: () {},
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("images/fb.png"),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage("images/twitter.png"),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE AN ACCOUNT? ",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
