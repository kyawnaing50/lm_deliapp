import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({
    super.key,
    required this.color,
    required this.elevation,
    required this.shadowColor,
    required this.widget,
  });

  Color? color;
  double elevation;
  Color? shadowColor;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      shadowColor: shadowColor,
      child: widget,
    );
  }
}
