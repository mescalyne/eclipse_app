import 'package:project/domain/entities/posts.dart';

class FiveState {
  ScreenStatus screenStatus;
  PostsDto? posts;
  List<CommentDto>? comments;

  FiveState({
    required this.screenStatus,
    this.posts,
    this.comments,
  });

  FiveState copyWith({
    ScreenStatus? screenStatus,
    PostsDto? posts,
    List<CommentDto>? comments,
  }) =>
      FiveState(
        screenStatus: screenStatus ?? this.screenStatus,
        posts: posts ?? this.posts,
        comments: comments ?? this.comments,
      );
}

enum ScreenStatus { loading, error, screen }
