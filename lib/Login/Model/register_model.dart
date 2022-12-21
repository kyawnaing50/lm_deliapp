// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  RegisterModel({
    this.data,
    this.message,
  });

  final RegisterData? data;
  final String? message;
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}

@JsonSerializable()
class RegisterData {
  RegisterData({
    this.phone,
    this.roleId,
    this.name,
    this.password,
  });

  final String? phone;
  final String? roleId;
  final String? name;
  final String? password;
  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}
