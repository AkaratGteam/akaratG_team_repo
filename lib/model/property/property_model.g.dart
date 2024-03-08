// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      json['type'] as String?,
      json['floor'] as num?,
      json['space'] as num?,
      json['room_counter'] as num?,
      json['direction'] as String?,
      json['price'] as num?,
      json['property_type'] as String?,
      json['description'] as String?,
      json['location'] as String?,
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'floor': instance.floor,
      'space': instance.space,
      'room_counter': instance.room_counter,
      'direction': instance.direction,
      'price': instance.price,
      'property_type': instance.property_type,
      'description': instance.description,
      'location': instance.location,
    };
