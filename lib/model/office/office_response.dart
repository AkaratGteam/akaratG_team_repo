// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OfficeResponse {
  num id;
  String name;
  String phone;
  String phone_office;
  String password;
  String? otp;
  String? location;
  String? activation_days;
  String? rate;
  String? status;
  OfficeResponse({
    required this.id,
    required this.name,
    required this.phone,
    required this.phone_office,
    required this.password,
    this.otp,
    this.location,
    this.activation_days,
    this.rate,
    this.status,
  });

  OfficeResponse copyWith({
    num? id,
    String? name,
    String? phone,
    String? phone_office,
    String? password,
    String? otp,
    String? location,
    String? activation_days,
    String? rate,
    String? status,
  }) {
    return OfficeResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      phone_office: phone_office ?? this.phone_office,
      password: password ?? this.password,
      otp: otp ?? this.otp,
      location: location ?? this.location,
      activation_days: activation_days ?? this.activation_days,
      rate: rate ?? this.rate,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'phone': phone,
      'phone_office': phone_office,
      'password': password,
      'otp': otp,
      'location': location,
      'activation_days': activation_days,
      'rate': rate,
      'status': status,
    };
  }

  factory OfficeResponse.fromMap(Map<String, dynamic> map) {
    return OfficeResponse(
      id: map['id'] as num,
      name: map['name'] as String,
      phone: map['phone'] as String,
      phone_office: map['phone_office'] as String,
      password: map['password'] as String,
      otp: map['otp'] != null ? map['otp'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      activation_days: map['activation_days'] != null ? map['activation_days'] as String : null,
      rate: map['rate'] != null ? map['rate'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficeResponse.fromJson(String source) => OfficeResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OfficeResponse(id: $id, name: $name, phone: $phone, phone_office: $phone_office, password: $password, otp: $otp, location: $location, activation_days: $activation_days, rate: $rate, status: $status)';
  }

  @override
  bool operator ==(covariant OfficeResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.phone == phone &&
      other.phone_office == phone_office &&
      other.password == password &&
      other.otp == otp &&
      other.location == location &&
      other.activation_days == activation_days &&
      other.rate == rate &&
      other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      phone.hashCode ^
      phone_office.hashCode ^
      password.hashCode ^
      otp.hashCode ^
      location.hashCode ^
      activation_days.hashCode ^
      rate.hashCode ^
      status.hashCode;
  }
}
