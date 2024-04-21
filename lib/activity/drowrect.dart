// drow the Rect
import 'package:flutter/material.dart';

class DrowRect extends CustomPainter {
  /* PaintingStyle have to value stroke and fill  */
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    //paint.style = PaintingStyle.fill;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawRect(
        Rect.fromCenter(center: center, width: 200, height: 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
