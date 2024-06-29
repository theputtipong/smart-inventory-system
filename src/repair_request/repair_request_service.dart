import '../../extensions/first_where_or_null_extension.dart';
import 'repair_request_model.dart';

class RepairRequestService {
  final List<RepairRequest> _requests = [];

  List<RepairRequest> get requests => _requests;

  void addRequest(RepairRequest request) {
    _requests.add(request);
  }

  void updateRequest(String id, RepairRequest updatedRequest) {
    final index = _requests.indexWhere((request) => request.id == id);
    if (index != -1) {
      _requests[index] = updatedRequest;
    }
  }

  void removeRequest(String id) {
    _requests.removeWhere((request) => request.id == id);
  }

  RepairRequest? getRequestById(String id) {
    return _requests.firstWhereOrNull((request) => request.id == id);
  }
}
