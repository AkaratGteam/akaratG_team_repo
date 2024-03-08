import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LogInModel {
  factory LogInModel.fromJson(Map<String, dynamic> json) =>
      _$LogInModelFromJson(json);

  LogInModel({ this.phone,  this.password});
  
  final String? phone;
  final String? password;

  Map<String, dynamic> toJson() => _$LogInModelToJson(this);
}
