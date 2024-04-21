// drow the Circle
import 'package:flutter/material.dart';

class DrowCircle extends CustomPainter {
  /* CustomPainter is override two mathods paint and shouldRepaint
   1. paint mathods- its take to parameter convas and size.
   2. shouldRepaint-  */
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    //canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
