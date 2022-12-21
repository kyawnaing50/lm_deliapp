import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../Utilis/store.dart';

class MainPageController extends GetxController {
  var tabIndex = 0;
  Logger log = Logger();
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    log.i(MyStorage().getData("token"));
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
