import 'dart:async';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/data/storage/storage.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/domain/usecase/user.dart';
import 'package:project/presentation/pages/first/bloc/event.dart';
import 'package:project/presentation/pages/first/bloc/state.dart';
import 'package:project/presentation/router/bloc/bloc.dart';
import 'package:project/presentation/router/bloc/event.dart';
import 'package:project/resources/logger.dart';

typedef FirstEventHandler = Stream<FirstState>;

@Injectable()
class FirstBloc extends Bloc<FirstEvent, FirstState> {
  final GetUserUseCase _getUserUseCase;
  final RouterEventSink _routerEventSink;
  final UserStorage _userStorage;

  FirstBloc(
    this._getUserUseCase,
    this._routerEventSink,
    this._userStorage,
  ) : super(FirstState(screenStatus: ScreenStatus.loading)) {
    _userStorage.clear();

    add(OnLoad());
  }

  @override
  FirstEventHandler mapEventToState(FirstEvent event) => event.when(
        onLoad: _onLoad,
        onRouteToSecond: _onRouteToSecond,
      );

  FirstEventHandler _onLoad() async* {
    try {
      var result = await _getUserUseCase();
      yield state.copyWith(
        screenStatus: ScreenStatus.screen,
        userDto: result,
      );
    } catch (ex) {
      Log.error('FirstBloc - onLoad error: ${ex.toString()}');
    }
  }

  FirstEventHandler _onRouteToSecond(UserDto user) async* {
    _routerEventSink.add(RouterEvent.toSecond(user));
  }
}
