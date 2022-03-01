// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommentHiveTypeAdapter extends TypeAdapter<CommentHiveType> {
  @override
  final int typeId = 4;

  @override
  CommentHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommentHiveType(
      id: fields[0] as int?,
      postId: fields[1] as int?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      body: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CommentHiveType obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.postId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
