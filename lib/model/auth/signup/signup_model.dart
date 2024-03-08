import 'package:json_annotation/json_annotation.dart';
part 'signup_model.g.dart';

@JsonSerializable()
class SignUpModel {
  final String? name;
  final String? phone;
  final String? phone_office;
  final String? password;

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);

  SignUpModel({this.name, this.phone, this.phone_office, this.password});

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
