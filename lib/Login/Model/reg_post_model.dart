// To parse this JSON data, do
//
//     final registerPostModel = registerPostModelFromJson(jsonString);

import 'dart:convert';

RegisterModelPost registerPostModelFromJson(String str) =>
    RegisterModelPost.fromJson(json.decode(str));

String registerPostModelToJson(RegisterModelPost data) =>
    json.encode(data.toJson());

class RegisterModelPost {
  RegisterModelPost({
    required this.name,
    required this.phone,
    required this.password,
    required this.roleId,
  });

  final String name;
  final String phone;
  final String password;
  final String roleId;

  factory RegisterModelPost.fromJson(Map<String, dynamic> json) =>
      RegisterModelPost(
        name: json["name"],
        phone: json["phone"],
        password: json["password"],
        roleId: json["role_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "password": password,
        "role_id": roleId,
      };
}
