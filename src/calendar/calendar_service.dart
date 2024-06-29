import '../../extensions/first_where_or_null_extension.dart';
import 'calendar_model.dart';

class CalendarService {
  final List<CalendarEvent> _events = [];

  List<CalendarEvent> get events => _events;

  void addEvent(CalendarEvent event) {
    _events.add(event);
  }

  void updateEvent(String id, CalendarEvent updatedEvent) {
    final index = _events.indexWhere((event) => event.id == id);
    if (index != -1) {
      _events[index] = updatedEvent;
    }
  }

  void removeEvent(String id) {
    _events.removeWhere((event) => event.id == id);
  }

  CalendarEvent? getEventById(String id) {
    return _events.firstWhereOrNull((event) => event.id == id);
  }
}
