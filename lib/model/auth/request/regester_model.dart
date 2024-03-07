// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegesterModelRequest {
  String name;
  String phone;
  String phone_office;
  String password;
  RegesterModelRequest({
    required this.name,
    required this.phone,
    required this.phone_office,
    required this.password,
  });

  RegesterModelRequest copyWith({
    String? name,
    String? phone,
    String? phone_office,
    String? password,
  }) {
    return RegesterModelRequest(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      phone_office: phone_office ?? this.phone_office,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'phone_office': phone_office,
      'password': password,
    };
  }

  factory RegesterModelRequest.fromMap(Map<String, dynamic> map) {
    return RegesterModelRequest(
      name: map['name'] as String,
      phone: map['phone'] as String,
      phone_office: map['phone_office'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegesterModelRequest.fromJson(String source) => RegesterModelRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegesterModelRequest(name: $name, phone: $phone, phone_office: $phone_office, password: $password)';
  }

  @override
  bool operator ==(covariant RegesterModelRequest other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.phone == phone &&
      other.phone_office == phone_office &&
      other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      phone.hashCode ^
      phone_office.hashCode ^
      password.hashCode;
  }
}
