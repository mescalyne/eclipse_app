class PhotosDto {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotosDto({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
}

class AlbumDto {
  int? userId;
  int? id;
  String? title;
  List<PhotosDto>? photos;

  AlbumDto({this.userId, this.id, this.title,this.photos});
}
