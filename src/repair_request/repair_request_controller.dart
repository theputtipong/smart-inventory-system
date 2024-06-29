import 'package:dart_frog/dart_frog.dart';
import 'repair_request_model.dart';
import 'repair_request_service.dart';

final repairRequestService = RepairRequestService();

Handler repairRequestHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final repairRequest = RepairRequest.fromJson(data.toString());
    repairRequestService.addRequest(repairRequest);
    return Response.json(body: {'message': 'Repair request added successfully'});
  }

  // Implement other methods for update, delete, and fetch repair requests

  return Response.json(body: repairRequestService.requests);
};
