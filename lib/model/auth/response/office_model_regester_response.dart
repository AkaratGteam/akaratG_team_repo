// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OfficeModelRegesterResponse {
  String id;
  String name;
  String phone;
  String phone_office;
  String password;
  OfficeModelRegesterResponse({
    required this.id,
    required this.name,
    required this.phone,
    required this.phone_office,
    required this.password,
  });

  OfficeModelRegesterResponse copyWith({
    String? id,
    String? name,
    String? phone,
    String? phone_office,
    String? password,
  }) {
    return OfficeModelRegesterResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      phone_office: phone_office ?? this.phone_office,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'phone': phone,
      'phone_office': phone_office,
      'password': password,
    };
  }

  factory OfficeModelRegesterResponse.fromMap(Map<String, dynamic> map) {
    return OfficeModelRegesterResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      phone_office: map['phone_office'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficeModelRegesterResponse.fromJson(String source) => OfficeModelRegesterResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OfficeModelRegesterResponse(id: $id, name: $name, phone: $phone, phone_office: $phone_office, password: $password)';
  }

  @override
  bool operator ==(covariant OfficeModelRegesterResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.phone == phone &&
      other.phone_office == phone_office &&
      other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      phone.hashCode ^
      phone_office.hashCode ^
      password.hashCode;
  }
}
