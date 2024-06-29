import 'package:dart_frog/dart_frog.dart';
import 'notification_service.dart';

final notificationService = NotificationService();

Handler notificationHandler = (context) async {
  // Implement notification handler
  return Response.json(body: {'message': 'Notification sent successfully'});
};
