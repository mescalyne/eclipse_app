import 'package:injectable/injectable.dart';
import 'package:project/data/adapters/albums.dart';
import 'package:project/data/network/albums.dart';
import 'package:project/data/storage/storage.dart';
import 'package:project/domain/entities/albums.dart';

abstract class AlbumsRepository {
  Future<List<AlbumDto>> getAlbumsByUserId(int id);
}

@Injectable(as: AlbumsRepository)
class AlbumsRepositoryImpl implements AlbumsRepository {
  final AlbumService _getAlbumsService;
  final UserStorage _userStorage;

  AlbumsRepositoryImpl(this._getAlbumsService, this._userStorage);

  @override
  Future<List<AlbumDto>> getAlbumsByUserId(int userId) async {
    List<AlbumDto> posts = [];
    int countAlbum = await _userStorage.countAlbumsByUserId(userId);
    if (countAlbum == 0) {
      final result = await _getAlbumsService.getAlbums(userId);
      if (result != null) {
        List<AlbumDto> album = result.map((e) => e.toDomain).toList();
        await _userStorage.addAlbum(album);
      }
    }
    posts = await _userStorage.getAlbumsByUserId(userId);

    return posts;
  }
}
