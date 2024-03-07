// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LogInModelRequest {
  String phone;
  String password;
  LogInModelRequest({
    required this.phone,
    required this.password,
  });

  LogInModelRequest copyWith({
    String? phone,
    String? password,
  }) {
    return LogInModelRequest(
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phone': phone,
      'password': password,
    };
  }

  factory LogInModelRequest.fromMap(Map<String, dynamic> map) {
    return LogInModelRequest(
      phone: map['phone'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LogInModelRequest.fromJson(String source) => LogInModelRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LogInModelRequest(phone: $phone, password: $password)';

  @override
  bool operator ==(covariant LogInModelRequest other) {
    if (identical(this, other)) return true;
  
    return 
      other.phone == phone &&
      other.password == password;
  }

  @override
  int get hashCode => phone.hashCode ^ password.hashCode;
}
