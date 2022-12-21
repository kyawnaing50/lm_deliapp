import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
    required this.issurfixIcon,
    required this.prefixIcon,
    required this.obscureText,
    required this.focusColor,
    required this.fillColor,
    required this.hintText,
    required this.inputType,
  });
  TextEditingController controller;
  late bool issurfixIcon;
  Widget? surfixIcon;
  Widget? prefixIcon;
  bool obscureText;
  Color focusColor;
  Color fillColor;
  String hintText;
  TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return issurfixIcon != false
        ? TextFormField(
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              suffixIcon: surfixIcon,
              filled: true,
              focusColor: focusColor,
              fillColor: fillColor,
              hintText: hintText,
              contentPadding: const EdgeInsets.all(5),
            ),
          )
        : TextFormField(
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              filled: true,
              focusColor: focusColor,
              fillColor: fillColor,
              hintText: hintText,
              contentPadding: const EdgeInsets.all(5),
            ),
          );
  }
}
