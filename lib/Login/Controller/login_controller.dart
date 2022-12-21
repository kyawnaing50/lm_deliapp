import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../../Api/api_service.dart';
import '../../GlobalComponents/global_controller.dart';
import '../../Utilis/store.dart';
import '../Model/login_model.dart';
import '../Model/reg_post_model.dart';
import '../Model/register_model.dart';

class LoginController extends GetxController {
  // ignore: non_constant_identifier_names
  TextEditingController textPhoneController_Signin = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController textPasswordController_Signin = TextEditingController();

  // ignore: non_constant_identifier_names
  TextEditingController textNameController_Signup = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController textPhoneController_Signup = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController textPasswordController_Signup = TextEditingController();
  Logger log = Logger();
  late LoginModel data;
  late RegisterModelPost regDataPost;
  RxMap<String, dynamic> loginData = <String, dynamic>{}.obs;
  RxBool isSignupScreen = false.obs;

  RxBool loadingVisible = false.obs;

  void loadProgress() {
    loadingVisible.value = !loadingVisible.value;
  }

  // Future<LoginModel> login() async {
  //   //log.i(loginData);
  //   // return await UserApi(Dio()).getLogin(loginData).then(
  //   //   (value) {
  //   //     MyStorage().setData("token", value.token);
  //   //     MyStorage().setData("userId", value.data!.id);
  //   //     loadProgress();
  //   //     //log.i(MyStorage().getData("userId"));
  //   //     return value;
  //   //   },
  //   // ).catchError((Object obj) {
  //   //   // non-200 error goes here.
  //   //   switch (obj.runtimeType) {
  //   //     case DioError:
  //   //       // Here's the sample to get the failed response error code and message
  //   //       final res = (obj as DioError).response;
  //   //       loadProgress();
  //   //       GlobalController.getErrorSnacker(
  //   //           "Login failed",
  //   //           "Username or password is incorrect!",
  //   //           const Color.fromARGB(255, 233, 98, 85));

  //   //       //log.e("Got error : ${res!.statusCode} -> ${res.statusMessage}");
  //   //       break;
  //   //     default:
  //   //       break;
  //   //   }
  //   // }
  //   //);
  // }

  // Future<RegisterModel> getRegister(RegisterModelPost data) async {
  //   return await UserApi(Dio()).register(data).then((value) {
  //     //log.i(value);
  //     loadProgress();
  //     return value;
  //   }).catchError((Object obj) {
  //     // non-200 error goes here.
  //     switch (obj.runtimeType) {
  //       case DioError:
  //         // Here's the sample to get the failed response error code and message
  //         final res = (obj as DioError).response;
  //         loadProgress();
  //         GlobalController.getErrorSnacker(
  //             "Error",
  //             "Empty found. Please insert all data!",
  //             const Color.fromARGB(255, 233, 98, 85));
  //         log.e("Got error : ${res!.statusCode} -> ${res.statusMessage}");
  //         break;
  //       default:
  //         break;
  //     }
  //   });
  // }

  void isSignupScreenFlag(bool flag) {
    isSignupScreen.value = flag;
  }

  // Future<RegisterModel> signUp() async {
  //   RegisterModelPost rgco = RegisterModelPost(
  //     name: textNameController_Signup.text,
  //     phone: textPhoneController_Signup.text,
  //     password: textPasswordController_Signup.text,
  //     roleId: "4",
  //   );

  //   RegisterModel data = await getRegister(rgco);
  //   if (data.message == "success") {
  //   } else {}
  //   return data;
  // }

  // Future<String> signin() async {
  //   Map<String, dynamic> log = <String, dynamic>{
  //     "phone": textPhoneController_Signin.text,
  //     "password": textPasswordController_Signin.text,
  //     "role_id": "4",
  //   };
  //   loginData.value = log;
  //   LoginModel auth = await login();
  //   if (auth.message == "success") {
  //     MyStorage().setData("username", auth.data!.name);
  //     MyStorage().setData("phone", auth.data!.phone);
  //     //  _ctlHistory.orderApi();

  //     return auth.message.toString();
  //   }
  //   return auth.message.toString();
  // }

  void openInfoDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text("Information."),
            content: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                        "Your account is successfully created. Please login again.")
                  ]),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  navigator?.pop();
                },
                child: const Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
