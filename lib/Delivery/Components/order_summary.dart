import 'package:flutter/material.dart';

import '../../Utilis/styles.dart';

// ignore: must_be_immutable
class DeliSummary extends StatelessWidget {
  DeliSummary({
    super.key,
    required this.orderItem,
    required this.price,
    required this.totalPrice,
    required this.itemCount,
    //Deli Mode ထည့်မယ်။
  });
  String orderItem;
  String price;
  String totalPrice;
  int itemCount;
  // Deli Model ကို list နဲ့ တောင်းမယ်။

  TextStyle textStyle = Styles.textStyle(
    fontSize: 14.0,
    color: const Color.fromARGB(235, 22, 23, 23),
    fontWeight: FontWeight.w600,
  );
  TextStyle textStyleOrderName = Styles.textStyle(
    fontSize: 12.0,
    color: const Color.fromARGB(235, 22, 23, 23),
    fontWeight: FontWeight.w600,
  );
  TextStyle textStylePrice = Styles.textStyle(
    fontSize: 12.0,
    color: const Color.fromARGB(235, 179, 136, 6),
    fontWeight: FontWeight.w600,
  );
  TextStyle textStyleTotal = Styles.textStyle(
    fontSize: 12.0,
    color: const Color.fromARGB(235, 209, 68, 8),
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Items List",
            style: textStyle,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: itemCount,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "(${index + 1}) $orderItem ",
                      style: textStyleOrderName,
                    ),
                    Text(
                      price,
                      style: textStylePrice,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: textStyleTotal,
              ),
              Text(
                totalPrice,
                style: textStyleTotal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
