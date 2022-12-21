import 'package:get/get.dart';

import 'main_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    // WidgetsBinding.instance.addObserver()
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
  }
}
