
import 'package:json_annotation/json_annotation.dart';
part 'property_model.g.dart';


@JsonSerializable()
class PropertyModel {
  final String? type;
  final num? floor;
  final num? space;
  final num? room_counter;
  final String? direction;
  final num? price;
  final String? property_type;
  final String? description;
  final String? location;

  PropertyModel(
      this.type,
      this.floor,
      this.space,
      this.room_counter,
      this.direction,
      this.price,
      this.property_type,
      this.description,
      this.location);
  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}
