import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class UserHiveType extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? username;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? phone;
  @HiveField(5)
  String? website;

  UserHiveType(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website});
}
