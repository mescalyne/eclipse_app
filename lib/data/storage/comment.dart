
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'comment.g.dart';

@HiveType(typeId: 4)
class CommentHiveType extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? postId;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? body;


  CommentHiveType(
      {this.id,
      this.postId,
      this.name,
      this.email,
      this.body
     });
}
