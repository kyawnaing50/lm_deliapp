import 'package:customer_lm/Delivery/Components/sliding_panel.dart';
import 'package:customer_lm/GlobalComponents/custom_card.dart';
import 'package:customer_lm/GlobalComponents/custom_container.dart';
import 'package:customer_lm/Settings/Views/setting_page.dart';
import 'package:customer_lm/Utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccounPage extends StatelessWidget {
  const AccounPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: Styles.constGradient(),
                    color: Colors.red,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        clipBehavior: Clip.hardEdge,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: CircleAvatar(
                                  //  backgroundColor: Colors.grey,
                                  // radius: 30,
                                  child: Image.asset(
                                    "assets/logo.png",
                                    scale: 0.8,
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        clipBehavior: Clip.hardEdge,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Nyein Chan Aye",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 69, 68, 68),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyCard(
                              color: null,
                              elevation: 6.0,
                              shadowColor: Colors.green.shade700,
                              widget: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(Icons.email),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Gmail",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      ":",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "nyeinchan090@gmail.com",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            MyCard(
                              color: null,
                              elevation: 6.0,
                              shadowColor: Colors.green.shade700,
                              widget: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(Icons.phone),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Phone",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      ":",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "09 123456789",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyCard(
                              color: null,
                              elevation: 8.0,
                              shadowColor: Colors.green.shade700,
                              widget: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 10,
                                ),
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.roller_shades),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Role : Delivery",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyCard(
                                color: null,
                                elevation: 8.0,
                                shadowColor: Colors.green.shade700,
                                widget: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 10,
                                  ),
                                  child: InkWell(
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.settings),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 8),
                                          child: Text(
                                            "Settings",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Get.to(SettingsPage());
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 10),
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // MySliding(
        //   widget: Column(
        //     children: [
        //       const Padding(
        //         padding: EdgeInsets.only(top: 30, bottom: 10),
        //         child: Text(
        //           "Are you sure you want to log out?",
        //           style: TextStyle(fontSize: 16),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(
        //             left: 10, right: 10, bottom: 10, top: 2),
        //         child: InkWell(
        //           splashColor: Colors.red,
        //           child: MyContainer(
        //             height: 40,
        //             circularRadius: 20,
        //             color: null,
        //             width: null,
        //             boxborder: Border.all(width: 1, color: Colors.blue),
        //             widget: const Center(
        //               child: Text(
        //                 "Logout",
        //                 style: TextStyle(color: Colors.red, fontSize: 16),
        //               ),
        //             ),
        //             gradient: null,
        //           ),
        //           onTap: () {},
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(
        //             left: 10, right: 10, bottom: 10, top: 2),
        //         child: InkWell(
        //           splashColor: Colors.red,
        //           child: MyContainer(
        //             height: 40,
        //             circularRadius: 20,
        //             color: null,
        //             width: null,
        //             boxborder: Border.all(width: 1, color: Colors.blue),
        //             widget: const Center(
        //               child: Text(
        //                 "Cancel",
        //                 style: TextStyle(fontSize: 16),
        //               ),
        //             ),
        //             gradient: null,
        //           ),
        //           onTap: () {},
        //         ),
        //       ),
        //     ],
        //   ),
        //   minHeight: 60,
        //   maxHeight: 200,
        // ),
      ],
    );
  }
}
