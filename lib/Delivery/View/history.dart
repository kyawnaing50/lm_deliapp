import 'package:customer_lm/Delivery/View/delivery_detail.dart';
import 'package:customer_lm/GlobalComponents/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../GlobalComponents/custom_card.dart';
import '../../GlobalComponents/search_field.dart';
import '../../Utilis/styles.dart';

// ignore: must_be_immutable
class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});
  final status = "Pending";
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
//  final ctrl = Get.put(HomePageController());
  TextEditingController searchEditTextController = TextEditingController();
  Logger log = Logger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 3, 118, 64),
        title: SearchTextField(
          controller: searchEditTextController,
          labelText: "Search",
          hintText: "Search",
          isTitle: false,
          title: "Delivered History",
          isIcon: true,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: Styles.constGradient(),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
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
                color: Colors.grey[200],
                elevation: 7.0,
                shadowColor: Colors.green.shade400,
                widget: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 30, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyContainer(
                            height: null,
                            circularRadius: 20,
                            color: Colors.green.shade400,
                            width: null,
                            widget: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Text(
                                "Date: 18-12-2022",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            gradient: null,
                            boxborder: null,
                          ),
                          MyContainer(
                            height: null,
                            circularRadius: 20,
                            color: Colors.yellow.shade400,
                            width: null,
                            widget: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Text(
                                "Oder ID: ${1234567}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            gradient: null,
                            boxborder: null,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Customer Name",
                            style: textStyleOrderName,
                          ),
                          Text(
                            "Nyein Chan Aye",
                            style: textStylePrice,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Phone Number",
                            style: textStyleOrderName,
                          ),
                          Text(
                            "09123456789",
                            style: textStylePrice,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: Colors.green,
                              child: MyContainer(
                                height: null,
                                circularRadius: 10,
                                color: Colors.green.shade300,
                                width: null,
                                widget: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Text("View Detail"),
                                ),
                                gradient: null,
                                boxborder: null,
                              ),
                              onTap: () {
                                Get.to(
                                  DeliveryDetail(
                                    status: "2",
                                    name: "Nyein Chan Aye",
                                    address: "78 36x37, Building (B), No. 128",
                                    phone: "09123456789",
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            status == "Approve"
                                ? MyContainer(
                                    height: null,
                                    circularRadius: 10,
                                    color: Colors.green,
                                    width: null,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Text(status),
                                    ),
                                    gradient: null,
                                    boxborder: null,
                                  )
                                : MyContainer(
                                    height: null,
                                    circularRadius: 10,
                                    color: Colors.yellow,
                                    width: null,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Text(status),
                                    ),
                                    gradient: null,
                                    boxborder: null,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
