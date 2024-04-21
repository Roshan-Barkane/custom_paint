import 'package:custom_paint/activity/rectangle.dart';
import 'package:flutter/material.dart';

class Custom_Paint extends StatefulWidget {
  const Custom_Paint({super.key});

  @override
  State<Custom_Paint> createState() => _Custom_PaintState();
}

class _Custom_PaintState extends State<Custom_Paint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        elevation: 2,
        toolbarHeight: 70,
        title: const Text(
          "Custom Paint",
          style: TextStyle(fontSize: 24, letterSpacing: 1, wordSpacing: 3),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: CustomPaint(
            // this take a size colled convers size drow the all shapes
            painter: DrowRectangle(),
            size: const Size(300, 400), // take convers size
          ),
        ),
      ),
    );
  }
}

// drow the line
class MasterPainter extends CustomPainter {
  /* CustomPainter is override two mathods paint and shouldRepaint
   1. paint mathods- its take to parameter convas and size.
   2. shouldRepaint-  */
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.strokeWidth = 3;
    paint.color = Colors.black;
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
