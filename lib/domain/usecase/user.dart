import 'package:injectable/injectable.dart';
import 'package:project/data/repository/user.dart';
import 'package:project/domain/entities/user.dart';

abstract class GetUserUseCase {
  Future<List<UserDto>> call();
}

@Injectable(as: GetUserUseCase)
class GetUserImpl implements GetUserUseCase {
  final UserRepository _repository;

  GetUserImpl(this._repository);

  @override
  Future<List<UserDto>> call() => _repository.getUser();
}
