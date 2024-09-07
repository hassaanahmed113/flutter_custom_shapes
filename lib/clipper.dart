import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 4);
    var firstBendPoint = Offset(size.width / 7, size.height / 3);
    var firstEndPoint = Offset(size.width / 4, size.height / 4);
    path.quadraticBezierTo(firstBendPoint.dx, firstBendPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondBendPoint = Offset(2.5 * size.width / 7, size.height / 3);
    var secondEndPoint = Offset(2 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(secondBendPoint.dx, secondBendPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    var thirdBendPoint = Offset(4.5 * size.width / 7, size.height / 3);
    var thirdEndPoint = Offset(3 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(thirdBendPoint.dx, thirdBendPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    var fourthBendPoint = Offset(6 * size.width / 7, size.height / 3);
    var fourthEndPoint = Offset(4 * size.width / 4, size.height / 4);
    path.quadraticBezierTo(fourthBendPoint.dx, fourthBendPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}






















// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.moveTo(size.width, 0);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width, size.height);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }

// class TriangleClipperHalf extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width, 0);
//     path.lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
