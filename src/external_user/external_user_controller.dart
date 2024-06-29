import 'package:dart_frog/dart_frog.dart';
import 'external_user_model.dart';
import 'external_user_service.dart';

final externalUserService = ExternalUserService();

Handler externalUserHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final user = ExternalUser.fromJson(data.toString());
    externalUserService.addUser(user);
    return Response.json(body: {'message': 'External user added successfully'});
  }

  // Implement other methods for update, delete, and fetch external users

  return Response.json(body: externalUserService.users);
};
