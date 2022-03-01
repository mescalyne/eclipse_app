import 'package:project/domain/entities/albums.dart';

class FourState {
  ScreenStatus screenStatus;
  List<AlbumDto>? albums;

  FourState({
    required this.screenStatus,
    this.albums,
  });

  FourState copyWith({
    ScreenStatus? screenStatus,
    List<AlbumDto>? albums,
  }) =>
      FourState(
        screenStatus: screenStatus ?? this.screenStatus,
        albums: albums ?? this.albums,
      );
}

enum ScreenStatus { loading, error, screen }
