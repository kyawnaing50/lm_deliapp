// import 'package:customer_lm/HomePage/Model/category_model.dart';
// import 'package:customer_lm/HomePage/Model/items_model.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';

// import '../HomePage/Model/cat_details.dart';
// import '../Login/Model/login_model.dart';
// import '../Login/Model/reg_post_model.dart';
// import '../Login/Model/register_model.dart';
// import '../PromotionPage/Model/promotion_model.dart';

// part 'api_service.g.dart';

// @RestApi(baseUrl: "https://dev.mobilelikemm.com/ml/public/api/")
// abstract class UserApi {
//   factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

// //Items
//   @GET("user/items")
//   @Header("Accept:applicaltion/json")
//   @Header("Connection:keep-alive")
//   Future<Items> callItems();

// //Category
//   @GET("category")
//   @Header("Accept:applicaltion/json")
//   @Header("Connection:keep-alive")
//   Future<Category> callCategories();

// //subCatItems
//   @GET("sub/items/{id}")
//   @Header("Accept:applicaltion/json")
//   @Header("Connection:keep-alive")
//   Future<CatDetails> catDetails(
//     @Path('id') String subId,
//   );

// //Promotion
//   @GET("promotion")
//   @Header("Accept:applicaltion/json")
//   @Header("Connection:keep-alive")
//   Future<Promotion> callPromotion();

//   //User Login
//   @POST("login")
//   @Header("Accept:application/json")
//   @Header("Connection:keep-alive")
//   Future<LoginModel> getLogin(
//     @Body() Map<String, dynamic> login,
//   );

//   //User account registration
//   @POST("register")
//   @Header("Accept:application/json")
//   @Header("Connection:keep-alive")
//   Future<RegisterModel> register(
//     @Body() RegisterModelPost regData,
//   );
// }
