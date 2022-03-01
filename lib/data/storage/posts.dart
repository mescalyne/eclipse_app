import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'posts.g.dart';

@HiveType(typeId: 1)
class PostsHiveType extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? userId;
  @HiveField(2)
  String? title;
  @HiveField(3)
  String? body;
 

  PostsHiveType(
      {this.id,
      this.userId,
      this.title,
      this.body,
     });
}