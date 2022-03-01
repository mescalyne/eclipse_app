import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/presentation/provider/provider.dart';

import 'event.dart';

typedef RouteEventHandler = Stream<List<RouteInfo>>;

abstract class RouterEventSink {
  void add(RouterEvent event);
}

@Singleton(as: RouterEventSink)
class RouterBloc extends Bloc<RouterEvent, List<RouteInfo>>
    implements RouterEventSink {
  RouterBloc() : super([ScreenProvider.first()]);

  @override
  Stream<List<RouteInfo>> mapEventToState(RouterEvent event) => event.when(
        pop: _onPop,
        toFirst: _onRouteToFirst,
        toSecond: _onRouteToSecond,
        toThird: _onRouteToThird,
        toFour: _onRouteToFour,
        toFive: _onRouteToFive,
      );

  RouteEventHandler _onPop() async* {
    yield [...state..removeLast()];
  }

  RouteEventHandler _onRouteToFirst() async* {
    yield [...state, ScreenProvider.first()];
  }

  RouteEventHandler _onRouteToSecond(UserDto user) async* {
    yield [...state, ScreenProvider.second(user)];
  }

  RouteEventHandler _onRouteToThird(int userId) async* {
    yield [...state, ScreenProvider.third(userId)];
  }

  RouteEventHandler _onRouteToFour(int userId) async* {
    yield [...state, ScreenProvider.four(userId)];
  }

  RouteEventHandler _onRouteToFive(int userId) async* {
    yield [...state, ScreenProvider.five(userId)];
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
