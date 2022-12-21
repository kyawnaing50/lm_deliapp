import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static List<BoxShadow> boxShadow = [
    BoxShadow(
      //color: Colors.grey.withOpacity(0.3),
      offset: const Offset(1, 7),
      color: Color.fromARGB(255, 128, 224, 155).withOpacity(1),
      spreadRadius: 1,
      blurRadius: 10,
      //offset: Offset(0, 3),
    ),
  ];

  static TextStyle textStyle({
    double fontSize = 14.0,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }

  static LinearGradient constGradient() {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color.fromARGB(161, 17, 104, 4),
        Color.fromARGB(82, 230, 204, 8),
      ],
    );
  }
}
