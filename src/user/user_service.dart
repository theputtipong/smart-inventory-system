import '../../extensions/first_where_or_null_extension.dart';
import 'user_model.dart';

class UserService {
  final List<User> _users = [];

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
  }

  void updateUser(String id, User updatedUser) {
    final index = _users.indexWhere((user) => user.id == id);
    if (index != -1) {
      _users[index] = updatedUser;
    }
  }

  void removeUser(String id) {
    _users.removeWhere((user) => user.id == id);
  }

  User? getUserById(String id) {
    return _users.firstWhereOrNull((user) => user.id == id);
  }
}
