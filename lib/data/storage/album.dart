

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'album.g.dart';

@HiveType(typeId: 2)
class PhotoHiveType extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? albumId;
  @HiveField(2)
  String? title;
  @HiveField(3)
  String? url;
  @HiveField(4)
  String? thumbnailUrl;

  PhotoHiveType(
      {this.id,
      this.albumId,
      this.title,
      this.url,
      this.thumbnailUrl
     });
}

@HiveType(typeId: 3)
class AlbumHiveType extends HiveObject{
  @HiveField(0)
  int? userId;
  @HiveField(1)
  int? id;
  @HiveField(2)
  String? title;
  @HiveField(3)
  List<PhotoHiveType>? photos;

  AlbumHiveType({
    this.userId,
    this.id,
    this.title,
    this.photos
  });
}
