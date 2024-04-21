// drow the Rect
import 'package:flutter/material.dart';

class DrowRectangle extends CustomPainter {
  /* PaintingStyle have to value stroke and fill  */
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    //paint.style = PaintingStyle.fill;
    // fromRectAndCorners : topleft,topright,bottomleft,bottonright,
    // fromRectXY : top-bottom,left-right

    Rect rect = const Rect.fromLTRB(10, 20, 200, 100);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          rect,
          topLeft: const Radius.circular(20),
          topRight: const Radius.circular(70),
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
