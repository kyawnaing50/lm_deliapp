import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utilis/styles.dart';

// ignore: must_be_immutable
class SearchTextField extends StatelessWidget {
  SearchTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.isTitle,
    required this.title,
    required this.isIcon,
  });
  TextStyle textStyle = Styles.textStyle(
    fontSize: 16.0,
    color: const Color.fromARGB(235, 227, 239, 239),
    fontWeight: FontWeight.w600,
  );
  TextEditingController controller;
  String labelText;
  String hintText;
  late bool isTitle;
  String title;
  late bool isIcon;
  Function? backFunction;
  @override
  Widget build(BuildContext context) {
    return isTitle != false
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: CircleAvatar(
                    //  backgroundColor: Colors.grey,
                    // radius: 30,
                    child: Image.asset(
                      "assets/logo.png",
                      scale: 0.8,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: 40,
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      // labelText: "Search",
                      hintText: "Search",
                      // labelStyle: TextStyle(color: Colors.green),
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : isIcon == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      child: const Icon(Icons.arrow_back),
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        title,
                        style: textStyle,
                      )),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                title,
                style: textStyle,
              ));
  }
}
