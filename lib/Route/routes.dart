import 'package:get/get.dart';
import '../Login/View/login_page.dart';
import '../Mainpage/main_page.dart';
import '../Mainpage/page_binding.dart';
import 'route_config.dart';

List<GetPage> route = [
  GetPage(
    name: Routes.initial,
    page: () => const MainPage(),
    binding: MainPageBinding(),
  ),
  GetPage(name: Routes.login, page: () => LoginPage()),
  // GetPage(name: Routes.product, page: () => ProductPage()),
  // GetPage(name: Routes.order, page: () => OrderPage()),
  // GetPage(name: Routes.setting, page: () => SettingPage()),
  // GetPage(name: Routes.about, page: () => AboutUs()),
  //GetPage(name: Routes.orderDetail, page: () => OrderDetail()),
];
