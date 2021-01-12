import 'package:flutter/material.dart';

class Eps31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Belajar ShaderMask'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.5)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.darken,
            child: Image(
              width: 500,
              image: AssetImage('images/Lisa.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
