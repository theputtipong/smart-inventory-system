// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReturnRequest {
  final String requestId;
  final String orderId;
  final String reason;
  final String status; // 'pending', 'approved', 'denied'

  ReturnRequest({
    required this.requestId,
    required this.orderId,
    required this.reason,
    required this.status,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestId': requestId,
      'orderId': orderId,
      'reason': reason,
      'status': status,
    };
  }

  factory ReturnRequest.fromMap(Map<String, dynamic> map) {
    return ReturnRequest(
      requestId: map['requestId'] as String,
      orderId: map['orderId'] as String,
      reason: map['reason'] as String,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReturnRequest.fromJson(String source) => ReturnRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
