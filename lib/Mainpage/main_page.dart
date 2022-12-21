import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Account/View/account_page.dart';
import '../Delivery/View/delivery_page.dart';
import '../Delivery/View/history.dart';
import 'main_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(builder: (controller) {
      return Scaffold(
        //  backgroundColor: Colors.indigo.shade600,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              DeliveryPage(),
              HistoryPage(),
              const AccounPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: const Color.fromARGB(255, 13, 169, 36),
          selectedItemColor: const Color.fromARGB(235, 179, 136, 6),
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: true,

          //showUnselectedLabels: true,
          items: [
            _bottomNavigationItems(
              const Icon(
                Icons.delivery_dining_sharp,
                // color: Color.fromARGB(255, 13, 169, 36),
              ),
              'Delivery',
            ),
            _bottomNavigationItems(
              const Icon(
                Icons.history,
                // color: Color.fromARGB(255, 13, 169, 36),
              ),
              'History',
            ),
            _bottomNavigationItems(
              const Icon(
                Icons.person,
                // color: Color.fromARGB(255, 13, 169, 36),
              ),
              'Account',
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationItems(Icon icon, String text) {
    return BottomNavigationBarItem(
      icon: icon,
      label: text,
    );
  }
}
