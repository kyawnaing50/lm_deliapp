import 'package:customer_lm/GlobalComponents/custom_card.dart';
import 'package:flutter/material.dart';

import '../../GlobalComponents/search_field.dart';
import '../../Utilis/styles.dart';

// ignore: must_be_immutable
class AboutPage extends StatelessWidget {
  AboutPage({super.key});
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
          title: "About Page",
          isIcon: true,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: Styles.constGradient(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: MyCard(
          color: null,
          elevation: 8,
          shadowColor: null,
          widget: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyCard(
                  color: null,
                  elevation: 8,
                  shadowColor: null,
                  widget: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "This is the very first version of the softwae and the further developments are underway. If you find anything that make the",
                            style: TextStyle(letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyCard(
                  color: null,
                  elevation: 8,
                  shadowColor: null,
                  widget: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Company",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "This is the very first version of the softwae and the further developments are underway. If you find anything that make the and the old man has come to an end of the tunnel in search for gold he met a weird little god that has nine tail just like in japanes tails. And the creature was hostile toward at first but become polite ",
                            style: TextStyle(letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
