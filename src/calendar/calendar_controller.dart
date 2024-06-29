import 'package:dart_frog/dart_frog.dart';
import 'calendar_model.dart';
import 'calendar_service.dart';

final calendarService = CalendarService();

Handler calendarHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final event = CalendarEvent.fromJson(data.toString());
    calendarService.addEvent(event);
    return Response.json(body: {'message': 'Event added successfully'});
  }

  // Implement other methods for update, delete, and fetch events

  return Response.json(body: calendarService.events);
};
