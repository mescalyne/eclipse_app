// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserHiveTypeAdapter extends TypeAdapter<UserHiveType> {
  @override
  final int typeId = 0;

  @override
  UserHiveType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserHiveType(
      id: fields[0] as int?,
      name: fields[1] as String?,
      username: fields[2] as String?,
      email: fields[3] as String?,
      phone: fields[4] as String?,
      website: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserHiveType obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.website);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserHiveTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
