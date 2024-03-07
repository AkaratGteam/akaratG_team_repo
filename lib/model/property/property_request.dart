// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PropertyRequest {
  String type;
  num floor;
  num space;
  num room_counter;
  String direction;
  num price;
  String property_type;
  String description;
  String location;
  PropertyRequest({
    required this.type,
    required this.floor,
    required this.space,
    required this.room_counter,
    required this.direction,
    required this.price,
    required this.property_type,
    required this.description,
    required this.location,
  });

  PropertyRequest copyWith({
    String? type,
    num? floor,
    num? space,
    num? room_counter,
    String? direction,
    num? price,
    String? property_type,
    String? description,
    String? location,
  }) {
    return PropertyRequest(
      type: type ?? this.type,
      floor: floor ?? this.floor,
      space: space ?? this.space,
      room_counter: room_counter ?? this.room_counter,
      direction: direction ?? this.direction,
      price: price ?? this.price,
      property_type: property_type ?? this.property_type,
      description: description ?? this.description,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'floor': floor,
      'space': space,
      'room_counter': room_counter,
      'direction': direction,
      'price': price,
      'property_type': property_type,
      'description': description,
      'location': location,
    };
  }

  factory PropertyRequest.fromMap(Map<String, dynamic> map) {
    return PropertyRequest(
      type: map['type'] as String,
      floor: map['floor'] as num,
      space: map['space'] as num,
      room_counter: map['room_counter'] as num,
      direction: map['direction'] as String,
      price: map['price'] as num,
      property_type: map['property_type'] as String,
      description: map['description'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyRequest.fromJson(String source) => PropertyRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PropertyRequest(type: $type, floor: $floor, space: $space, room_counter: $room_counter, direction: $direction, price: $price, property_type: $property_type, description: $description, location: $location)';
  }

  @override
  bool operator ==(covariant PropertyRequest other) {
    if (identical(this, other)) return true;
  
    return 
      other.type == type &&
      other.floor == floor &&
      other.space == space &&
      other.room_counter == room_counter &&
      other.direction == direction &&
      other.price == price &&
      other.property_type == property_type &&
      other.description == description &&
      other.location == location;
  }

  @override
  int get hashCode {
    return type.hashCode ^
      floor.hashCode ^
      space.hashCode ^
      room_counter.hashCode ^
      direction.hashCode ^
      price.hashCode ^
      property_type.hashCode ^
      description.hashCode ^
      location.hashCode;
  }
}
