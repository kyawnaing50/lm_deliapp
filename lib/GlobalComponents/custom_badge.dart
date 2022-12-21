import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MyBadge extends StatelessWidget {
  MyBadge({
    super.key,
    required this.text,
    required this.widget,
  });
  String text;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Badge(
        position: BadgePosition.topEnd(top: -1, end: -20),
        //badgeColor: Colors.transparent,
        badgeContent: Container(
          width: 15,
          height: 25,
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        child: widget,
      ),
    );
  }
}
