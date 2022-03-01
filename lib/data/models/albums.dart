class AlbumNetworkDto {
  int? userId;
  int? id;
  String? title;
  List<PhotosNetworkDto>? photos;

  AlbumNetworkDto({this.userId, this.id, this.title,this.photos});

  AlbumNetworkDto.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }
}

class PhotosNetworkDto {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotosNetworkDto(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  PhotosNetworkDto.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }
}
