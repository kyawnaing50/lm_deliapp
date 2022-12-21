// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'api_service.dart';

// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************

// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

// class _UserApi implements UserApi {
//   _UserApi(
//     this._dio, {
//     this.baseUrl,
//   }) {
//     baseUrl ??= 'https://dev.mobilelikemm.com/ml/public/api/';
//   }

//   final Dio _dio;

//   String? baseUrl;

//   @override
//   Future<Items> callItems() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result =
//         await _dio.fetch<Map<String, dynamic>>(_setStreamType<Items>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'user/items',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = Items.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<Category> callCategories() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result =
//         await _dio.fetch<Map<String, dynamic>>(_setStreamType<Category>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'category',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = Category.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<CatDetails> catDetails(subId) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result = await _dio
//         .fetch<Map<String, dynamic>>(_setStreamType<CatDetails>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'sub/items/${subId}',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = CatDetails.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<Promotion> callPromotion() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result = await _dio
//         .fetch<Map<String, dynamic>>(_setStreamType<Promotion>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'promotion',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = Promotion.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<LoginModel> getLogin(login) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(login);
//     final _result = await _dio
//         .fetch<Map<String, dynamic>>(_setStreamType<LoginModel>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'login',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = LoginModel.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<RegisterModel> register(regData) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(regData.toJson());
//     final _result = await _dio
//         .fetch<Map<String, dynamic>>(_setStreamType<RegisterModel>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               'register',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = RegisterModel.fromJson(_result.data!);
//     return value;
//   }

//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }
