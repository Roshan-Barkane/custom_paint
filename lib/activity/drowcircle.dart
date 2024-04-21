// drow the Circle
import 'package:flutter/material.dart';

class DrowCircle extends CustomPainter {
  /* PaintingStyle have to value stroke and fill  */
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    //paint.style = PaintingStyle.stroke;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
