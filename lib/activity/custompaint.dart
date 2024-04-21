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
        ),
      ),
    );
  }
}
