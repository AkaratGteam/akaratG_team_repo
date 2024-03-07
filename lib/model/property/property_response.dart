// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:akarat_g/model/office/office_response.dart';

class PropertyResponse {
  num id;
  String type;
  num floor;
  num room_counter;
  String direction;
  num price;
  String property_type;
  String description;
  String location;
  num office_id;
  String type_contract;
  String status;
  OfficeResponse office;
  PropertyResponse({
    required this.id,
    required this.type,
    required this.floor,
    required this.room_counter,
    required this.direction,
    required this.price,
    required this.property_type,
    required this.description,
    required this.location,
    required this.office_id,
    required this.type_contract,
    required this.status,
    required this.office,
  });

  PropertyResponse copyWith({
    num? id,
    String? type,
    num? floor,
    num? room_counter,
    String? direction,
    num? price,
    String? property_type,
    String? description,
    String? location,
    num? office_id,
    String? type_contract,
    String? status,
    OfficeResponse? office,
  }) {
    return PropertyResponse(
      id: id ?? this.id,
      type: type ?? this.type,
      floor: floor ?? this.floor,
      room_counter: room_counter ?? this.room_counter,
      direction: direction ?? this.direction,
      price: price ?? this.price,
      property_type: property_type ?? this.property_type,
      description: description ?? this.description,
      location: location ?? this.location,
      office_id: office_id ?? this.office_id,
      type_contract: type_contract ?? this.type_contract,
      status: status ?? this.status,
      office: office ?? this.office,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'floor': floor,
      'room_counter': room_counter,
      'direction': direction,
      'price': price,
      'property_type': property_type,
      'description': description,
      'location': location,
      'office_id': office_id,
      'type_contract': type_contract,
      'status': status,
      'office': office.toMap(),
    };
  }

  factory PropertyResponse.fromMap(Map<String, dynamic> map) {
    return PropertyResponse(
      id: map['id'] as num,
      type: map['type'] as String,
      floor: map['floor'] as num,
      room_counter: map['room_counter'] as num,
      direction: map['direction'] as String,
      price: map['price'] as num,
      property_type: map['property_type'] as String,
      description: map['description'] as String,
      location: map['location'] as String,
      office_id: map['office_id'] as num,
      type_contract: map['type_contract'] as String,
      status: map['status'] as String,
      office: OfficeResponse.fromMap(map['office'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyResponse.fromJson(String source) => PropertyResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PropertyResponse(id: $id, type: $type, floor: $floor, room_counter: $room_counter, direction: $direction, price: $price, property_type: $property_type, description: $description, location: $location, office_id: $office_id, type_contract: $type_contract, status: $status, office: $office)';
  }

  @override
  bool operator ==(covariant PropertyResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type &&
      other.floor == floor &&
      other.room_counter == room_counter &&
      other.direction == direction &&
      other.price == price &&
      other.property_type == property_type &&
      other.description == description &&
      other.location == location &&
      other.office_id == office_id &&
      other.type_contract == type_contract &&
      other.status == status &&
      other.office == office;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      floor.hashCode ^
      room_counter.hashCode ^
      direction.hashCode ^
      price.hashCode ^
      property_type.hashCode ^
      description.hashCode ^
      location.hashCode ^
      office_id.hashCode ^
      type_contract.hashCode ^
      status.hashCode ^
      office.hashCode;
  }
}
