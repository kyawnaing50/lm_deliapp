import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Mainpage/page_binding.dart';
import 'Route/route_config.dart';
import 'Route/routes.dart';
import 'Utilis/store.dart';

// Future<void> messageHandler(RemoteMessage message) async {
//   Logger log = Logger();
//   // await Firebase.initializeApp();
//   // await setupFlutterNotifications();
//   //showFlutterNotification(message);
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   log.i('Handling a background message ${message.messageId}');
//   log.e(message);
// }

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  // Set the background messaging handler early on, as a named top-level function
  //  FirebaseMessaging.onBackgroundMessage(messageHandler);
  // FirebaseMessaging.onMessageOpenedApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //ItemController controller = Get.put(ItemController());
  //OrderController ctrl = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainPageBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 143, 152, 233),
      ),
      initialRoute:
          MyStorage().getData("token") != null ? Routes.login : Routes.initial,
      getPages: route,
    );
  }
}
