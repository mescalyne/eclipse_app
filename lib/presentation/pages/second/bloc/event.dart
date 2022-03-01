import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/domain/entities/albums.dart';
import 'package:project/domain/entities/posts.dart';
part 'event.freezed.dart';

@freezed
class SecondEvent with _$SecondEvent {
  const factory SecondEvent.onLoad() = OnLoad;
  const factory SecondEvent.onRouteToThird() = OnRouteToThird;
  const factory SecondEvent.onRouteToFour() = OnRouteToFour;
  const factory SecondEvent.onLoadedPost(List<PostsDto> posts) = OnLoadedPost;
  const factory SecondEvent.onLoadedAlbum(List<AlbumDto> albums) =
      OnLoadedAlbum;
}
