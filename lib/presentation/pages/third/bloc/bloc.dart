import 'dart:async';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/usecase/posts.dart';
import 'package:project/presentation/pages/third/bloc/event.dart';
import 'package:project/presentation/pages/third/bloc/state.dart';
import 'package:project/presentation/router/bloc/bloc.dart';
import 'package:project/presentation/router/bloc/event.dart';
import 'package:project/resources/logger.dart';

typedef ThirdEventHandler = Stream<ThirdState>;

@Injectable()
class ThirdBloc extends Bloc<ThirdEvent, ThirdState> {
  int? userId;
  final GetPostsByUserIdUseCase _getPostsUseCase;
    final RouterEventSink _routerEventSink;


  ThirdBloc(
    @factoryParam this.userId,
    this._routerEventSink,
    this._getPostsUseCase,
  ) : super(ThirdState(screenStatus: ScreenStatus.loading)) {
    add(OnLoad());
  }

  @override
  ThirdEventHandler mapEventToState(ThirdEvent event) => event.when(
        onLoad: _onLoad,
        onRouteToFive: _onRouteToFive,
      );

  ThirdEventHandler _onLoad() async* {
    try {
      final posts = await _getPostsUseCase(userId!);
      yield state.copyWith(screenStatus: ScreenStatus.screen, posts: posts);
    } catch (ex) {
      Log.error('ThirdBloc - _onLoad error: ${ex.toString()}');
    }
  }

  ThirdEventHandler _onRouteToFive(int id) async* {
      _routerEventSink.add(RouterEvent.toFive(id));
  }
}
