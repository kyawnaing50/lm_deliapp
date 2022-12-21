import 'package:get_storage/get_storage.dart';

class MyStorage {
  void setData(String key, dynamic value) => GetStorage().write(key, value);

  int? getInt(String key) => GetStorage().read(key);
  String? getString(String key) => GetStorage().read(key);
  bool? getBool(String key) => GetStorage().read(key);
  double? getDouble(String key) => GetStorage().read(key);
  dynamic getData(String key) => GetStorage().read(key);
  void clearData() async => GetStorage().erase();

  // Future<File> pickImg() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();
  //   File file;
  //   if (result != null) {
  //     file = File(result.files.single.path!);
  //   } else {
  //     file = File("");
  //   }
  //   return file;
  // }
}
