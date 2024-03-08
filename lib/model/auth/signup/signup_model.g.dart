// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      phone_office: json['phone_office'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'phone_office': instance.phone_office,
      'password': instance.password,
    };
