import 'package:customer_lm/Delivery/Controller/deli_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../../GlobalComponents/custom_card.dart';
import '../../GlobalComponents/custom_container.dart';
import '../../GlobalComponents/search_field.dart';
import '../../Utilis/styles.dart';
import '../Components/address_info.dart';
import '../Components/order_summary.dart';

// ignore: must_be_immutable
class DeliveryDetail extends StatelessWidget {
  DeliveryDetail({
    super.key,
    required this.name,
    required this.address,
    required this.phone,
    required this.status,
  });
  String name;
  String address;
  String phone;
  String status;
  TextStyle textStyle = Styles.textStyle(
    fontSize: 12.0,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  TextStyle textStyleNameAddress = Styles.textStyle(
    fontSize: 14.0,
    color: const Color.fromARGB(255, 22, 21, 21),
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
  final deliController = Get.put(DeliveryController());
  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController phoneTextEditController = TextEditingController();
  TextEditingController searchEditTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
        //Obx(
        //() =>

        Scaffold(
      appBar: AppBar(
        title: SearchTextField(
          controller: searchEditTextController,
          labelText: "Search",
          hintText: "Search",
          isTitle: false,
          title: "Order Detail",
          isIcon: true,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: Styles.constGradient(),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                MyCard(
                  color: null,
                  elevation: 9.0,
                  shadowColor: Colors.green.shade400,
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 5),
                          child: Text(
                            "Address & Info",
                            style: textStyleNameAddress,
                          ),
                        ),
                        AddressAndInfo(
                          name: name, //"Nyein Chan Aye",
                          phone: phone, //"09-774-167-157",
                          address:
                              address, // "78 36x37, Building (B), No. 128",
                        ),
                      ],
                    ),
                  ),
                ),
                MyCard(
                  color: null,
                  elevation: 9.0,
                  shadowColor: Colors.green.shade400,
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: DeliSummary(
                      //ဒီနေရာမှာ model ကို list နဲ့ တောင်းပြီး loop ပတ် ထုတ်ရန် ။
                      itemCount: 5,
                      orderItem: "iPhone 13",
                      price: "1,300,000 Ks",
                      totalPrice: "2,000,000 Ks",
                    ),
                  ),
                ),
                status == "1"
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: MyContainer(
                          boxborder: null,
                          height: null,
                          width: null,
                          circularRadius: 20,
                          color: const Color.fromARGB(255, 3, 186, 58),
                          gradient: null, //Styles.constGradient(),
                          widget: MaterialButton(
                            onPressed: () {},
                            splashColor: Colors.white,
                            minWidth: 0,
                            padding: EdgeInsets.zero,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              child: Text(
                                "Approve",
                                style: textStyle,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
    //  );
  }
}
