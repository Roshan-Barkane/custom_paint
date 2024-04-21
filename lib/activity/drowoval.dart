// drow the Rect
import 'package:flutter/material.dart';

class DrowOval extends CustomPainter {
  /* PaintingStyle have to value stroke and fill  */
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    //paint.style = PaintingStyle.fill;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawOval(Rect.fromLTRB(10, 20, 200, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
