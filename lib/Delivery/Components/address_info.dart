import 'package:flutter/material.dart';

import '../../Utilis/styles.dart';

// ignore: must_be_immutable
class AddressAndInfo extends StatelessWidget {
  AddressAndInfo({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
  });
  String name;
  String phone;
  String address;

  //Constants
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name",
                style: textStyleOrderName,
              ),
              Text(
                name,
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
                "Phone No",
                style: textStyleOrderName,
              ),
              Text(
                phone,
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
                "Address",
                style: textStyleOrderName,
              ),
              Text(
                address,
                style: textStylePrice,
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
