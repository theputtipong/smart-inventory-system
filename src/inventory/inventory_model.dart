// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InventoryItem {
  final String id;
  final String name;
  final int quantity;
  final String location;
  final DateTime expirationDate;

  InventoryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.location,
    required this.expirationDate,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'quantity': quantity,
      'location': location,
      'expirationDate': expirationDate.millisecondsSinceEpoch,
    };
  }

  factory InventoryItem.fromMap(Map<String, dynamic> map) {
    return InventoryItem(
      id: map['id'] as String,
      name: map['name'] as String,
      quantity: map['quantity'] as int,
      location: map['location'] as String,
      expirationDate: DateTime.fromMillisecondsSinceEpoch(map['expirationDate'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory InventoryItem.fromJson(String source) => InventoryItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
