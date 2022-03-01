import 'package:project/domain/entities/albums.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/domain/entities/user.dart';

class SecondState {
  UserDto? user;
  List<PostsDto>? posts;
  List<AlbumDto>? albums;
  ScreenStatus screenStatus;

  SecondState({
    this.user,
    this.posts,
    this.albums,
    required this.screenStatus,
  });

  SecondState copyWith({
    UserDto? user,
    List<PostsDto>? posts,
    List<AlbumDto>? albums,
    ScreenStatus? screenStatus,
  }) =>
      SecondState(
        posts: posts ?? this.posts,
        user: user ?? this.user,
        albums: albums ?? this.albums,
        screenStatus: screenStatus ?? this.screenStatus,
      );
}

enum ScreenStatus { loading, error, screen }
