// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CalendarEvent {
  final String id;
  final DateTime date;
  final String description;

  CalendarEvent({
    required this.id,
    required this.date,
    required this.description,
  });

  // Add serialization and deserialization methods if needed

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date.millisecondsSinceEpoch,
      'description': description,
    };
  }

  factory CalendarEvent.fromMap(Map<String, dynamic> map) {
    return CalendarEvent(
      id: map['id'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CalendarEvent.fromJson(String source) => CalendarEvent.fromMap(json.decode(source) as Map<String, dynamic>);
}
