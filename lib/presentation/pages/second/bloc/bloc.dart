import 'dart:async';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/entities/albums.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/domain/usecase/albums.dart';
import 'package:project/domain/usecase/posts.dart';
import 'package:project/presentation/pages/second/bloc/event.dart';
import 'package:project/presentation/pages/second/bloc/state.dart';
import 'package:project/presentation/router/bloc/bloc.dart';
import 'package:project/presentation/router/bloc/event.dart';
import 'package:project/resources/logger.dart';

typedef SecondEventHandler = Stream<SecondState>;

@Injectable()
class SecondBloc extends Bloc<SecondEvent, SecondState> {
  UserDto? user;
  final GetPostsByUserIdUseCase _getPostsUseCase;
  final GetAlbumsByUserIdUseCase _getAlbumsByUserIdUseCase;
  final RouterEventSink _routerEventSink;

  SecondBloc(
    @factoryParam this.user,
    this._getPostsUseCase,
    this._getAlbumsByUserIdUseCase,
    this._routerEventSink,
  ) : super(SecondState(
          screenStatus: ScreenStatus.screen,
          user: user,
        )) {
    add(OnLoad());
  }

  @override
  SecondEventHandler mapEventToState(SecondEvent event) => event.when(
        onLoad: _onLoad,
        onRouteToThird: _onRouteToThird,
        onRouteToFour: _onRouteToFour,
        onLoadedPost: _onLoadedPosts,
        onLoadedAlbum: _onLoadedAlbums,
      );

  SecondEventHandler _onLoadedPosts(List<PostsDto> posts) async* {
    if (posts.isNotEmpty) {
      yield state.copyWith(posts: posts);
      _isLoadedPosts.add(true);
    }
  }

  SecondEventHandler _onLoadedAlbums(List<AlbumDto> albums) async* {
    if (albums.isNotEmpty) {
      yield state.copyWith(albums: albums);
      _isLoadedAlbums.add(true);
    }
  }

  SecondEventHandler _onLoad() async* {
    try {
      _getPostsUseCase(user!.id!).then((posts) => add(OnLoadedPost(posts)));
      _getAlbumsByUserIdUseCase(user!.id!)
          .then((albums) => add(OnLoadedAlbum(albums)));
    } catch (ex) {
      Log.error('SecondBloc - onLoad error: ${ex.toString()}');
    }
  }

  SecondEventHandler _onRouteToThird() async* {
    _routerEventSink.add(RouterEvent.toThird(user!.id!));
  }

  SecondEventHandler _onRouteToFour() async* {
    _routerEventSink.add(RouterEvent.toFour(user!.id!));
  }

  final StreamController<bool> _isLoadedAlbums = StreamController<bool>();
  Stream<bool> get isLoadedAlbums => _isLoadedAlbums.stream;

  final StreamController<bool> _isLoadedPosts = StreamController<bool>();
  Stream<bool> get isLoadedPosts => _isLoadedPosts.stream;
}
