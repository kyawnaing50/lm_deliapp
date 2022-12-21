// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      data: json['data'] == null
          ? null
          : RegisterData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
      phone: json['phone'] as String?,
      roleId: json['roleId'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'roleId': instance.roleId,
      'name': instance.name,
      'password': instance.password,
    };
