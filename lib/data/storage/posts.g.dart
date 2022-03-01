// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsHiveTypeAdapter extends TypeAdapter<PostsHiveType> {
  @override
  final int typeId = 1;

  @override
  PostsHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsHiveType(
      id: fields[0] as int?,
      userId: fields[1] as int?,
      title: fields[2] as String?,
      body: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PostsHiveType obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
