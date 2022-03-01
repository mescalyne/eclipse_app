import 'package:injectable/injectable.dart';
import 'package:project/data/client.dart';
import 'package:project/data/models/user.dart';
import 'package:project/resources/logger.dart';

abstract class UserService {
  Future<List<UserNetworkDto>?> getUsers();
}

@Injectable(as: UserService)
class UserServiceImpl implements UserService {
  final EclipseApi _api;

  UserServiceImpl(this._api);

  @override
  Future<List<UserNetworkDto>?> getUsers() async {
    final result = await _api.client.get(
      'users',
    );

    Log.info('UserServiceImpl - getUsers: ${result.data}');
    return List<UserNetworkDto>.from(
        result.data.map((e) => UserNetworkDto.fromJson(e)));
  }
}
