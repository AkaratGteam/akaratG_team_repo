// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:akarat_g/model/auth/response/office_model_regester_response.dart';

class RegesterResponse {
  OfficeModelRegesterResponse office;
  String token;
  RegesterResponse({
    required this.office,
    required this.token,
  });

  RegesterResponse copyWith({
    OfficeModelRegesterResponse? office,
    String? token,
  }) {
    return RegesterResponse(
      office: office ?? this.office,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'office': office.toMap(),
      'token': token,
    };
  }

  factory RegesterResponse.fromMap(Map<String, dynamic> map) {
    return RegesterResponse(
      office: OfficeModelRegesterResponse.fromMap(map['office'] as Map<String,dynamic>),
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegesterResponse.fromJson(String source) => RegesterResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RegesterResponse(office: $office, token: $token)';

  @override
  bool operator ==(covariant RegesterResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.office == office &&
      other.token == token;
  }

  @override
  int get hashCode => office.hashCode ^ token.hashCode;
}
