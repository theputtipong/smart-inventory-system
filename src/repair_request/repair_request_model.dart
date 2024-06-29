// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RepairRequest {
  final String id;
  final String itemId;
  final String description;
  final String status; // 'pending', 'in_progress', 'completed'

  RepairRequest({
    required this.id,
    required this.itemId,
    required this.description,
    required this.status,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'itemId': itemId,
      'description': description,
      'status': status,
    };
  }

  factory RepairRequest.fromMap(Map<String, dynamic> map) {
    return RepairRequest(
      id: map['id'] as String,
      itemId: map['itemId'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RepairRequest.fromJson(String source) => RepairRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
