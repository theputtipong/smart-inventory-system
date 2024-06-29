import 'package:dart_frog/dart_frog.dart';
import 'order_status_model.dart';
import 'order_status_service.dart';

final orderStatusService = OrderStatusService();

Handler orderStatusHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final orderStatus = OrderStatus.fromJson(data.toString());
    orderStatusService.addStatus(orderStatus);
    return Response.json(body: {'message': 'Order status added successfully'});
  }

  // Implement other methods for update, delete, and fetch order statuses

  return Response.json(body: orderStatusService.statuses);
};
