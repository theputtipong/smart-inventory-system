// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OrderStatus {
  final String orderId;
  final String status; // 'pending', 'shipped', 'delivered', 'returned'

  OrderStatus({
    required this.orderId,
    required this.status,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orderId': orderId,
      'status': status,
    };
  }

  factory OrderStatus.fromMap(Map<String, dynamic> map) {
    return OrderStatus(
      orderId: map['orderId'] as String,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderStatus.fromJson(String source) => OrderStatus.fromMap(json.decode(source) as Map<String, dynamic>);
}
