import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../Route/route_config.dart';

class SplashController extends GetxController {
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (getStorge.read("id") != null) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.offAllNamed(Routes.initial);
      });
    } else {
      Get.offAllNamed(Routes.login);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
