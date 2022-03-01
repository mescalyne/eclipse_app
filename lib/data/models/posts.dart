class PostsNetworkDto {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostsNetworkDto({this.userId, this.id, this.title, this.body});

  PostsNetworkDto.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}


class CommentNetworkDto {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentNetworkDto({this.postId, this.id, this.name, this.email, this.body});

  CommentNetworkDto.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
}