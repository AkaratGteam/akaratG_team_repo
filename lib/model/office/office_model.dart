import 'package:json_annotation/json_annotation.dart';

part 'office_model.g.dart';

@JsonSerializable()
class OfficeModel {
  final num? id;
  final String? name;
  final String? phone;
  final String? phone_office;
  final String? password;
  final String? otp;
  final String? location;
  final String? activation_days;
  final String? rate;
  final String? status;

  OfficeModel(
    this.id,
    this.name,
    this.phone,
    this.phone_office,
    this.password,
    this.otp,
    this.location,
    this.activation_days,
    this.rate,
    this.status,
  );

  factory OfficeModel.fromJson(Map<String, dynamic> json) =>
      _$OfficeModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfficeModelToJson(this);
}
