import 'package:injectable/injectable.dart';
import 'package:project/data/repository/albums.dart';
import 'package:project/domain/entities/albums.dart';

abstract class GetAlbumsByUserIdUseCase {
  Future<List<AlbumDto>> call(int userId);
}

@Injectable(as: GetAlbumsByUserIdUseCase)
class GetAlbumsByUserIdUseCaseImpl implements GetAlbumsByUserIdUseCase {
  final AlbumsRepository _repository;

  GetAlbumsByUserIdUseCaseImpl(this._repository);

  @override
  Future<List<AlbumDto>> call(int userId) => _repository.getAlbumsByUserId(userId);
}
