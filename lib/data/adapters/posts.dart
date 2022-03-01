import 'package:project/data/models/posts.dart';
import 'package:project/domain/entities/posts.dart';

extension PostsAdapter on PostsNetworkDto {
  PostsDto get toDomain {
    return PostsDto(
      id: id,
      userId: userId,
      title: title,
      body: body,
    );
  }
}

extension CommentAdapter on CommentNetworkDto {
  CommentDto get toDomain {
    return CommentDto(
      id: id,
      postId: postId,
      name: name,
      email: email,
      body: body,
    );
  }
}
