// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PhotoHiveTypeAdapter extends TypeAdapter<PhotoHiveType> {
  @override
  final int typeId = 2;

  @override
  PhotoHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PhotoHiveType(
      id: fields[0] as int?,
      albumId: fields[1] as int?,
      title: fields[2] as String?,
      url: fields[3] as String?,
      thumbnailUrl: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PhotoHiveType obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.albumId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.thumbnailUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlbumHiveTypeAdapter extends TypeAdapter<AlbumHiveType> {
  @override
  final int typeId = 3;

  @override
  AlbumHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlbumHiveType(
      userId: fields[0] as int?,
      id: fields[1] as int?,
      title: fields[2] as String?,
      photos: (fields[3] as List?)?.cast<PhotoHiveType>(),
    );
  }

  @override
  void write(BinaryWriter writer, AlbumHiveType obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.photos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlbumHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
