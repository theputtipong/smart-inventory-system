import '../../extensions/first_where_or_null_extension.dart';
import 'external_user_model.dart';

class ExternalUserService {
  final List<ExternalUser> _users = [];

  List<ExternalUser> get users => _users;

  void addUser(ExternalUser user) {
    _users.add(user);
  }

  void updateUser(String id, ExternalUser updatedUser) {
    final index = _users.indexWhere((user) => user.id == id);
    if (index != -1) {
      _users[index] = updatedUser;
    }
  }

  void removeUser(String id) {
    _users.removeWhere((user) => user.id == id);
  }

  ExternalUser? getUserById(String id) {
    return _users.firstWhereOrNull((user) => user.id == id);
  }
}
