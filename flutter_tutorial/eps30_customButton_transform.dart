import 'package:flutter/material.dart';
import 'dart:math';

class Eps30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Custom Buttoms transform"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.red, Colors.purple, Icons.adb),
              ColorfulButton(Colors.blue, Colors.pink, Icons.menu),
              ColorfulButton(Colors.orange, Colors.amber, Icons.comment),
              ColorfulButton(Colors.green, Colors.greenAccent, Icons.search)
            ],
          ),
        ],
      ),
    );
  }
}

class ColorfulButton extends StatefulWidget {
  Color primary, secondary;
  IconData icon;
  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(primary, secondary, icon);

  ColorfulButton(this.primary, this.secondary, this.icon);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color primary, secondary;
  IconData icon;

  _ColorfulButtonState(this.primary, this.secondary, this.icon);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secondary : primary,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressed) ? secondary : primary,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
