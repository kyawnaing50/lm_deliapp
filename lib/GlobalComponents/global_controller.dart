import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utilis/store.dart';

class GlobalController extends GetxController {
  bool shippingInfo = false;
  RxBool isEnglish = true.obs;
  RxString languageText = "English".obs;

  void changeLanguage(bool switchOn) {
    if (isEnglish.value) {
      isEnglish.value = false;
      languageText.value = "ဗမာ";
      MyStorage().setData("language", languageText.value);
    } else {
      isEnglish.value = true;
      languageText.value = "English";
      MyStorage().setData(("language"), languageText.value);
    }
  }

  void openInfoDialog(BuildContext context, String txtInfo) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(isEnglish.value ? "Information." : "သတင်းအချက်အလက်"),
            content: SingleChildScrollView(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(txtInfo)]),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  navigator?.pop();
                },
                child: Text(
                  isEnglish.value ? 'Ok' : "အိုကေ",
                  style: const TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          );
        });
  }

  // ignore: non_constant_identifier_names
  Future LoadingDialog(BuildContext context, String txtInfo) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: SimpleDialog(
            backgroundColor: Colors.white,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(txtInfo),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  isEnglish.value ? 'Cancel' : "ပယ်ဖျက်သည်",
                  style: const TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        );
      });

  static getErrorSnacker(String title, String text, Color color) {
    return Get.snackbar(title, text,
        backgroundColor: color,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        icon: const Icon(
          Icons.question_mark,
          color: Colors.white,
          size: 40,
        ),
        duration: const Duration(seconds: 2),
        borderRadius: 10.0,
        margin: const EdgeInsets.only(bottom: 300.0, left: 10.0, right: 10.0));
  }
}
