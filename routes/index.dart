import 'package:dart_frog/dart_frog.dart';
import '../src/calendar/calendar_controller.dart';
import '../src/external_user/external_user_controller.dart';
import '../src/feedback/feedback_controller.dart';
import '../src/inventory/inventory_controller.dart';
import '../src/notification/notification_controller.dart';
import '../src/order_status/order_status_controller.dart';
import '../src/repair_request/repair_request_controller.dart';
import '../src/return_request/return_request_controller.dart';
import '../src/user/user_controller.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger());
}

Router buildRouter() {
  final router = Router()
    ..mount('/inventory', inventoryHandler)
    ..mount('/user', userHandler)
    ..mount('/calendar', calendarHandler)
    ..mount('/notification', notificationHandler)
    ..mount('/external_user', externalUserHandler)
    ..mount('/repair_request', repairRequestHandler)
    ..mount('/order_status', orderStatusHandler)
    ..mount('/return_request', returnRequestHandler)
    ..mount('/feedback', feedbackHandler);

  // Add routes for other features

  return router;
}
