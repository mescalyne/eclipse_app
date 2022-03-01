import 'package:injectable/injectable.dart';
import 'package:project/data/adapters/user.dart';
import 'package:project/data/network/user.dart';
import 'package:project/data/storage/storage.dart';
import 'package:project/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<UserDto>> getUser();
}

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserService _getUserService;
  final UserStorage _userStorage;

  UserRepositoryImpl(this._getUserService, this._userStorage);

  @override
  Future<List<UserDto>> getUser() async {
    List<UserDto> users = [];

    if (_userStorage.countUsers() == 0) {
      final result = await _getUserService.getUsers();
      if (result != null) {
        users = result.map((e) => e.toDomain).toList();
        await _userStorage.addUsers(users);
      }
    } else {
      users = await _userStorage.getUsers();
    }
    
    return users;
  }
}
