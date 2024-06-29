import 'package:dart_frog/dart_frog.dart';
import 'return_request_model.dart';
import 'return_request_service.dart';

final returnRequestService = ReturnRequestService();

Handler returnRequestHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final returnRequest = ReturnRequest.fromJson(data.toString());
    returnRequestService.addRequest(returnRequest);
    return Response.json(body: {'message': 'Return request added successfully'});
  }

  // Implement other methods for update, delete, and fetch return requests

  return Response.json(body: returnRequestService.requests);
};
