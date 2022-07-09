import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.601018675721562).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7181664, size.height * 8.771186);
    path_0.cubicTo(
        size.width * 0.7181664,
        size.height * 8.709040,
        size.width * 0.7215620,
        size.height * 8.686441,
        size.width * 0.7249576,
        size.height * 8.723164);
    path_0.cubicTo(
        size.width * 0.7283531,
        size.height * 8.757062,
        size.width * 0.7283531,
        size.height * 8.807910,
        size.width * 0.7249576,
        size.height * 8.836158);
    path_0.cubicTo(
        size.width * 0.7198642,
        size.height * 8.861582,
        size.width * 0.7164686,
        size.height * 8.833333,
        size.width * 0.7181664,
        size.height * 8.771186);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9032258, size.height * 1.353107);
    path_1.cubicTo(
        size.width * 0.6417657,
        size.height * 1.296610,
        size.width * 0.3616299,
        size.height * 1.112994,
        size.width * 0.1409168,
        size.height * 0.8502825);
    path_1.lineTo(size.width * 0.01697793, size.height * 0.7033898);
    path_1.lineTo(size.width * 0.01697793, size.height * 0.3531073);
    path_1.lineTo(size.width * 0.01697793, 0);
    path_1.lineTo(size.width * 1.281834, 0);
    path_1.lineTo(size.width * 1.281834, size.height * -0.04802260);
    path_1.lineTo(size.width * 1.329372, size.height);
    path_1.cubicTo(size.width * 0.9847199, size.height, size.width * 0.3497453,
        size.height, size.width * -0.2852292, size.height);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
