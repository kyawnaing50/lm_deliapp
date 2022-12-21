import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  LoginModel({
    required this.data,
    required this.token,
    required this.message,
  });

  final LoginData? data;
  final String? token;
  final String? message;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@JsonSerializable()
class LoginData {
  LoginData({
    required this.id,
    required this.name,
    required this.phone,
    required this.points,
    required this.roleId,
  });
  final int? id;
  final String? name;
  final String? phone;
  final String? points;
  final String? roleId;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
