// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficeModel _$OfficeModelFromJson(Map<String, dynamic> json) => OfficeModel(
      json['id'] as num?,
      json['name'] as String?,
      json['phone'] as String?,
      json['phone_office'] as String?,
      json['password'] as String?,
      json['otp'] as String?,
      json['location'] as String?,
      json['activation_days'] as String?,
      json['rate'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$OfficeModelToJson(OfficeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'phone_office': instance.phone_office,
      'password': instance.password,
      'otp': instance.otp,
      'location': instance.location,
      'activation_days': instance.activation_days,
      'rate': instance.rate,
      'status': instance.status,
    };
