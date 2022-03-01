import 'package:injectable/injectable.dart';
import 'package:project/data/client.dart';
import 'package:project/data/models/albums.dart';
import 'package:project/resources/logger.dart';

abstract class AlbumService {
  Future<List<AlbumNetworkDto>?> getAlbums(int userId);
}

@Injectable(as: AlbumService)
class AlbumServiceImpl implements AlbumService {
  final EclipseApi _api;

  AlbumServiceImpl(this._api);

  @override
  Future<List<AlbumNetworkDto>?> getAlbums(int userId) async {
    final result = await _api.client.get(
      'users/$userId/albums',
    );

    Log.info('AlbumServiceImpl - getAlbums: ${result.data}');
    final albums = List<AlbumNetworkDto>.from(
        result.data.map((e) => AlbumNetworkDto.fromJson(e)));

    for (var element in albums) {
      final result = await _api.client.get(
        'albums/${element.id}/photos',
      );
      Log.info('AlbumServiceImpl - getAlbums - getPhotos: ${result.data}');

      element.photos = List<PhotosNetworkDto>.from(
          result.data.map((e) => PhotosNetworkDto.fromJson(e)));
    }

    return albums;
  }
}
