import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer({
    super.key,
    required this.height,
    required this.circularRadius,
    required this.color,
    required this.width,
    required this.widget,
    required this.gradient,
    required this.boxborder,
  });

  double? height;
  double? width;
  double circularRadius;
  Color? color;
  Widget? widget;
  Gradient? gradient;
  BoxBorder? boxborder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: boxborder,
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(circularRadius),
        ),
      ),
      child: widget,
    );
  }
}
