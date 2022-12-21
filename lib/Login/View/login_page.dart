import 'dart:ui';

import 'package:customer_lm/GlobalComponents/custom_container.dart';
import 'package:customer_lm/Mainpage/main_page.dart';
import 'package:customer_lm/Utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../GlobalComponents/custom_textfield.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextStyle textStyle = Styles.textStyle(
    fontSize: 14.0,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  TextStyle textStyleOrderName = Styles.textStyle(
    fontSize: 14.0,
    color: const Color.fromARGB(235, 22, 23, 23),
    fontWeight: FontWeight.w600,
  );
  TextStyle textStylePrice = Styles.textStyle(
    fontSize: 16.0,
    color: const Color.fromARGB(235, 7, 52, 216),
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: MyContainer(
          height: Get.height,
          circularRadius: 0,
          color: null,
          width: Get.width,
          gradient: Styles.constGradient(),
          boxborder: null,
          widget: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      // color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      //  backgroundColor: Colors.grey,
                      // radius: 30,
                      child: Image.asset(
                        "assets/logo.png",
                        scale: 0.8,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  "Welcome to \n Mobile Like Delevery ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 30, right: 30, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        "Phone No",
                        style: textStyleOrderName,
                      ),
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      issurfixIcon: false,
                      prefixIcon: const Icon(Icons.phone_android),
                      obscureText: false,
                      focusColor: Colors.green,
                      fillColor: Colors.white,
                      hintText: "09xxxxxxxxx",
                      inputType: TextInputType.name,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        "Password",
                        style: textStyleOrderName,
                      ),
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      issurfixIcon: false,
                      prefixIcon: const Icon(Icons.lock),
                      obscureText: false,
                      focusColor: Colors.green,
                      fillColor: Colors.white,
                      hintText: "***********",
                      inputType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              MyContainer(
                boxborder: null,
                height: null,
                width: null,
                circularRadius: 15,
                color: const Color.fromARGB(255, 3, 186, 58),
                gradient: null, //Styles.constGradient(),
                widget: MaterialButton(
                  onPressed: () {
                    Get.to(const MainPage());
                  },
                  splashColor: Colors.white,
                  minWidth: 0,
                  padding: EdgeInsets.zero,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Text(
                      "Login",
                      style: textStyle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Text(
                  "Forget Password?",
                  style: textStyleOrderName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
