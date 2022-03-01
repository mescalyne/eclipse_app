class PostsDto {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostsDto({this.userId, this.id, this.title, this.body});
}

class CommentDto {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentDto({this.postId, this.id, this.name, this.email, this.body});
}