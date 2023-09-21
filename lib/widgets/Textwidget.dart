import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  String text;
  Color color;
  FontWeight fontWeight;
  Textwidget({super.key, required this.text, required this.color , required this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, color: color, fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }
}
