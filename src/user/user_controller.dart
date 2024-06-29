import 'package:dart_frog/dart_frog.dart';
import 'user_model.dart';
import 'user_service.dart';

final userService = UserService();

Handler userHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final user = User.fromJson(data.toString());
    userService.addUser(user);
    return Response.json(body: {'message': 'User added successfully'});
  }

  // Implement other methods for update, delete, and fetch users

  return Response.json(body: userService.users);
};
