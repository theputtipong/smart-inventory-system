import '../../extensions/first_where_or_null_extension.dart';
import 'return_request_model.dart';

class ReturnRequestService {
  final List<ReturnRequest> _requests = [];

  List<ReturnRequest> get requests => _requests;

  void addRequest(ReturnRequest request) {
    _requests.add(request);
  }

  void updateRequest(String requestId, ReturnRequest updatedRequest) {
    final index = _requests.indexWhere((request) => request.requestId == requestId);
    if (index != -1) {
      _requests[index] = updatedRequest;
    }
  }

  void removeRequest(String requestId) {
    _requests.removeWhere((request) => request.requestId == requestId);
  }

  ReturnRequest? getRequestById(String requestId) {
    return _requests.firstWhereOrNull((request) => request.requestId == requestId);
  }
}
