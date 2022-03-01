import 'package:project/data/models/albums.dart';
import 'package:project/domain/entities/albums.dart';

extension PhotosAdapter on PhotosNetworkDto {
  PhotosDto get toDomain {
    return PhotosDto(
        id: id,
        albumId: albumId,
        thumbnailUrl: thumbnailUrl,
        title: title,
        url: url);
  }
}

extension AlbumAdapter on AlbumNetworkDto {
  AlbumDto get toDomain {
    return AlbumDto(
      id: id,
      userId: userId,
      title: title,
      photos: photos?.map((e) => e.toDomain).toList(),
    );
  }
}
