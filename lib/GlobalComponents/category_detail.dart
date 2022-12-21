// import 'package:customer_lm/Utilis/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import 'search_field.dart';

// // ignore: must_be_immutable
// class CategoriesDetail extends StatelessWidget {
//   CategoriesDetail({
//     super.key,
//     required this.subcategory,
//     required this.title,
//     required this.itemData,
//   });
//   List<SubCategory>? subcategory;
//   List<ItemsData>? itemData;
//   String title;
//   Logger log = Logger();

//   final ctrl = Get.put(HomePageController());
//   TextEditingController searchEditTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Scaffold(
//         appBar: AppBar(
//           // backgroundColor: const Color.fromARGB(255, 3, 118, 64),
//           title: SearchTextField(
//             controller: searchEditTextController,
//             labelText: "Search",
//             hintText: "Search",
//             isTitle: false,
//             title: title,
//             isIcon: true,
//           ),
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: Styles.constGradient(),
//             ),
//           ),
//         ),
//         body: itemData == null
//             ? Container(
//                 padding: const EdgeInsets.all(12.0),
//                 child: GridView.builder(
//                   itemCount: subcategory!.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 8.0,
//                     mainAxisSpacing: 8.0,
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                       splashColor: const Color(0xffDCC099),
//                       child: CustomCategories(
//                         itemCat: 0,
//                         mainHeight: 200,
//                         mainWidth: 200,
//                         mainColor: subcategory![index].color == null
//                             ? const Color.fromARGB(255, 218, 244, 231)
//                             : ctrl.getColor(subcategory![index].color!),

//                         catName: subcategory![index].name!, //"iPhone13 Pro 5G",
//                         imgHeight: 140,
//                         imgWidth: 200,
//                         textPrice: "450000 ks",
//                         status: 1,
//                         imgUrl: subcategory![index].photo == null
//                             ? "assets/categories/watch.jpg"
//                             : subcategory![index]
//                                 .photo!, //"ctrl.catList[index].imgUrl,,
//                         //"assets/categories/watch.jpg", //"ctrl.catList[index].imgUrl,",
//                       ),
//                       onTap: () async {
//                         Get.to(
//                           PorpularItem(
//                             title: subcategory![index].name!,
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               )
//             : Container(
//                 padding: const EdgeInsets.all(12.0),
//                 child: GridView.builder(
//                   itemCount: itemData!.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 8.0,
//                     mainAxisSpacing: 8.0,
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                       splashColor: const Color(0xffDCC099),
//                       child: CustomCategories(
//                         itemCat: 1,
//                         mainHeight: 200,
//                         mainWidth: 150,
//                         mainColor: itemData![index].detail.color == null
//                             ? const Color.fromARGB(255, 218, 244, 231)
//                             : ctrl.getColor(itemData![index].detail.color!),

//                         catName: itemData![index].name!, //"iPhone13 Pro 5G",
//                         imgHeight: 130,
//                         imgWidth: 120,
//                         textPrice: itemData![index].detail.price, //"450000 ks",
//                         status: 1,
//                         imgUrl: itemData![index].images ??
//                             "assets/categories/android.jpg", //"ctrl.catList[index].imgUrl,",
//                       ),
//                       onTap: () async {
//                         Get.to(
//                           PorpularItem(
//                             title: itemData![index].name!,
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//       ),
//     );
//   }
// }
