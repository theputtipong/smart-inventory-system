// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Feedback {
  final String id;
  final String userId;
  final String message;
  final DateTime date;

  Feedback({
    required this.id,
    required this.userId,
    required this.message,
    required this.date,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'message': message,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      id: map['id'] as String,
      userId: map['userId'] as String,
      message: map['message'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Feedback.fromJson(String source) => Feedback.fromMap(json.decode(source) as Map<String, dynamic>);
}
