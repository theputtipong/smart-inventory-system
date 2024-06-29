import '../../extensions/first_where_or_null_extension.dart';
import 'order_status_model.dart';

class OrderStatusService {
  final List<OrderStatus> _statuses = [];

  List<OrderStatus> get statuses => _statuses;

  void addStatus(OrderStatus status) {
    _statuses.add(status);
  }

  void updateStatus(String orderId, OrderStatus updatedStatus) {
    final index = _statuses.indexWhere((status) => status.orderId == orderId);
    if (index != -1) {
      _statuses[index] = updatedStatus;
    }
  }

  void removeStatus(String orderId) {
    _statuses.removeWhere((status) => status.orderId == orderId);
  }

  OrderStatus? getStatusByOrderId(String orderId) {
    return _statuses.firstWhereOrNull((status) => status.orderId == orderId);
  }
}
