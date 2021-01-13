import 'package:flutter/material.dart';

class Eps35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar ClipPath"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Image(
            width: 300,
            image: AssetImage('images/Lisa.jpg'),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);

    // path.quadraticBezierTo(
    //     size.width / 2, size.height * 0.75, size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
