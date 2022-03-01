import 'package:project/domain/entities/posts.dart';

class ThirdState {
  ScreenStatus screenStatus;
  List<PostsDto>? posts;

  ThirdState({
    required this.screenStatus,
    this.posts,
  });

  ThirdState copyWith({
    ScreenStatus? screenStatus,
    List<PostsDto>? posts,
  }) =>
      ThirdState(
        screenStatus: screenStatus ?? this.screenStatus,
        posts: posts ?? this.posts,
      );
}

enum ScreenStatus { loading, error, screen }
