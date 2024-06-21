import 'package:flutter/material.dart';

class VirtualCardCustomPath extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = new Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(0, size.height - 12);
    path.quadraticBezierTo(2, size.height - 1, 12, size.height);

    path.lineTo(size.width - 12, size.height);
    path.quadraticBezierTo(
        size.width - 1, size.height - 2, size.width, size.height - 12);
    path.cubicTo(size.width * 0.75, size.height * 0.4, size.width * 0.33,
        size.height * 0.15, 0, size.height * 0.33);

    return path;
  }

  @override
  bool shouldReclip(clip) {
    return true;
  }
}

class CustomPath extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 8, size.height - 8);
    path.quadraticBezierTo(
      size.width - 2,
      size.height - 10,
      size.width,
      size.height - 18,
    );
    path.lineTo(size.width - 10, 0);
    return path;
  }

  @override
  bool shouldReclip(clip) {
    return true;
  }
}

class CustomPath2 extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = new Path(); //0,0
    path.lineTo(10, size.height - 12); // 8, y-12
    // path.lineTo(size.width - 8, size.height - 8);
    // q 12, y-8, 16, y
    path.quadraticBezierTo(
      12,
      size.height - 5,
      20,
      size.height - 2,
    );
    path.lineTo(size.width - 8, size.height - 14);
    path.quadraticBezierTo(
      size.width - 2,
      size.height - 16,
      size.width,
      size.height - 24,
    );
    path.lineTo(size.width - 10, 0);
    return path;
  }

  @override
  bool shouldReclip(clip) {
    return true;
  }
}
