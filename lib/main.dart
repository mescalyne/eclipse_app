import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project/data/storage/album.dart';
import 'package:project/data/storage/comment.dart';
import 'package:project/data/storage/posts.dart';
import 'package:project/data/storage/storage.dart';
import 'package:project/data/storage/user.dart';
import 'package:project/presentation/router/bloc/bloc.dart';
import 'package:project/presentation/router/router.dart';
import 'package:project/resources/injection/injection.dart';

void main() async {
  await setupApp();
  runApp(MyApp());
}

Future<void> setupApp() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserHiveTypeAdapter());
  Hive.registerAdapter(PostsHiveTypeAdapter());
  Hive.registerAdapter(AlbumHiveTypeAdapter());
  Hive.registerAdapter(PhotoHiveTypeAdapter());
  Hive.registerAdapter(CommentHiveTypeAdapter());

  await Future.wait([UserStorageHive.init()]);

  await configureInjection(Env.dev);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: BlocProvider<RouterBloc>(
          create: (_) => getIt<RouterEventSink>() as RouterBloc,
          child: Router(
            routerDelegate: AppRouterDelegate(),
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Dosis',
        backgroundColor: Colors.white,
      ),
    );
  }
}
