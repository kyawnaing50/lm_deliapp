import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../Controller/deli_controller.dart';

// ignore: must_be_immutable
class MySliding extends StatelessWidget {
  MySliding({
    super.key,
    required this.widget,
    required this.minHeight,
    required this.maxHeight,
  });
  Widget widget;
  double minHeight;
  double maxHeight;
  final ctrl = Get.put(DeliveryController());

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: minHeight,
      maxHeight: maxHeight,
      panel: widget,
      collapsed: Icon(
        Icons.swipe_up,
        color: Colors.yellow.shade900,
      ),
    );
  }
}
