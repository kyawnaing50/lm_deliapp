import 'package:customer_lm/Account/View/account_page.dart';
import 'package:customer_lm/GlobalComponents/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../GlobalComponents/search_field.dart';
import '../../Utilis/styles.dart';
import 'about_page.dart';

// ignore: must_be_immutable
class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  TextEditingController searchEditTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(
          controller: searchEditTextController,
          labelText: "Search",
          hintText: "Search",
          isTitle: false,
          title: "Settings",
          isIcon: true,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: Styles.constGradient(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: MyCard(
                color: null,
                elevation: 8,
                shadowColor: null,
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        child: Row(
                          children: const [
                            Icon(Icons.person),
                            SizedBox(
                              width: 10,
                            ),
                            Text("My Account"),
                          ],
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.lock),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Change Password"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyCard(
                color: null,
                elevation: 8,
                shadowColor: null,
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "App",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.language),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Language"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.dark_mode),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Light/Dark Mode"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.currency_exchange),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Currency"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.notifications),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Notification"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.note),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Note Book"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MyCard(
                color: null,
                elevation: 8,
                shadowColor: null,
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "About",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.rule),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Terms of Us"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.policy),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Our Policy"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.admin_panel_settings),
                          SizedBox(
                            width: 10,
                          ),
                          Text("About Us"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      InkWell(
                        child: Row(
                          children: const [
                            Icon(Icons.verified_user_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text("About This App"),
                          ],
                        ),
                        onTap: () {
                          Get.to(AboutPage());
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
