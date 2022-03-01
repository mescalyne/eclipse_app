import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/presentation/pages/first/bloc/bloc.dart';
import 'package:project/presentation/pages/first/first.dart';
import 'package:project/presentation/pages/five/bloc/bloc.dart';
import 'package:project/presentation/pages/five/five.dart';
import 'package:project/presentation/pages/four/bloc/bloc.dart';
import 'package:project/presentation/pages/four/four.dart';
import 'package:project/presentation/pages/second/bloc/bloc.dart';
import 'package:project/presentation/pages/second/second.dart';
import 'package:project/presentation/pages/third/bloc/bloc.dart';
import 'package:project/presentation/pages/third/third.dart';
import 'package:project/presentation/router/router.dart';
import 'package:project/resources/injection/injection.dart';

class ScreenProvider {
  static RouteInfo first() => RouteInfo(
        id: FirstPage.id,
        builder: (_) => BlocProvider<FirstBloc>(
          create: (_) => getIt<FirstBloc>(),
          child: FirstPage(),
        ),
      );
      static RouteInfo second(UserDto user) => RouteInfo(
        id: SecondPage.id,
        builder: (_) => BlocProvider<SecondBloc>(
          create: (_) => getIt<SecondBloc>(param1: user),
          child: SecondPage(),
        ),
      );
      static RouteInfo third(int userId) => RouteInfo(
        id: ThirdPage.id,
        builder: (_) => BlocProvider<ThirdBloc>(
          create: (_) => getIt<ThirdBloc>(param1: userId),
          child: ThirdPage(),
        ),
      );
      static RouteInfo four(int userId) => RouteInfo(
        id: FourPage.id,
        builder: (_) => BlocProvider<FourBloc>(
          create: (_) => getIt<FourBloc>(param1: userId),
          child: FourPage(),
        ),
      );
      static RouteInfo five(int userId) => RouteInfo(
        id: FivePage.id,
        builder: (_) => BlocProvider<FiveBloc>(
          create: (_) => getIt<FiveBloc>(param1: userId),
          child: FivePage(),
        ),
      );
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route: {id: $id, builder: $builder}';
  }
}
