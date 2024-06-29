// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ExternalUser {
  final String id;
  final String name;
  final String role; // 'guest', 'external_user'

  ExternalUser({
    required this.id,
    required this.name,
    required this.role,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'role': role,
    };
  }

  factory ExternalUser.fromMap(Map<String, dynamic> map) {
    return ExternalUser(
      id: map['id'] as String,
      name: map['name'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExternalUser.fromJson(String source) => ExternalUser.fromMap(json.decode(source) as Map<String, dynamic>);
}
