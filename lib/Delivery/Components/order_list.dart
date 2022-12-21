import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../GlobalComponents/custom_card.dart';
import '../../Utilis/styles.dart';

// ignore: must_be_immutable
class OrderList extends StatelessWidget {
  OrderList(
      {super.key,
      required this.orderID,
      required this.orderItem,
      required this.date});
  String orderID;
  String orderItem;
  String date;

//
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
  Logger log = Logger();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Order Lists",
            style: textStyle,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  log.i("message");
                },
                child: MyCard(
                  color: null,
                  elevation: 7.0,
                  shadowColor: Colors.green.shade400,
                  widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Id",
                              style: textStyleOrderName,
                            ),
                            Text(
                              orderID,
                              style: textStylePrice,
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order items",
                              style: textStyleOrderName,
                            ),
                            Text(
                              orderItem,
                              style: textStylePrice,
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: textStyleOrderName,
                            ),
                            Text(
                              date,
                              style: textStylePrice,
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
