// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/client.dart' as _i3;
import '../../data/network/albums.dart' as _i8;
import '../../data/network/posts.dart' as _i4;
import '../../data/network/user.dart' as _i6;
import '../../data/repository/albums.dart' as _i9;
import '../../data/repository/posts.dart' as _i11;
import '../../data/repository/user.dart' as _i12;
import '../../data/storage/storage.dart' as _i7;
import '../../domain/entities/user.dart' as _i17;
import '../../domain/usecase/albums.dart' as _i10;
import '../../domain/usecase/posts.dart' as _i13;
import '../../domain/usecase/user.dart' as _i15;
import '../../presentation/pages/first/bloc/bloc.dart' as _i19;
import '../../presentation/pages/five/bloc/bloc.dart' as _i20;
import '../../presentation/pages/four/bloc/bloc.dart' as _i14;
import '../../presentation/pages/second/bloc/bloc.dart' as _i16;
import '../../presentation/pages/third/bloc/bloc.dart' as _i18;
import '../../presentation/router/bloc/bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.EclipseApi>(() => _i3.EclipseApiImpl());
  gh.factory<_i4.PostsService>(
      () => _i4.PostsServiceImpl(get<_i3.EclipseApi>()));
  gh.singleton<_i5.RouterEventSink>(_i5.RouterBloc());
  gh.factory<_i6.UserService>(() => _i6.UserServiceImpl(get<_i3.EclipseApi>()));
  gh.factory<_i7.UserStorage>(() => _i7.UserStorageHive());
  gh.factory<_i8.AlbumService>(
      () => _i8.AlbumServiceImpl(get<_i3.EclipseApi>()));
  gh.factory<_i9.AlbumsRepository>(() => _i9.AlbumsRepositoryImpl(
      get<_i8.AlbumService>(), get<_i7.UserStorage>()));
  gh.factory<_i10.GetAlbumsByUserIdUseCase>(
      () => _i10.GetAlbumsByUserIdUseCaseImpl(get<_i9.AlbumsRepository>()));
  gh.factory<_i11.PostsRepository>(() => _i11.PostsRepositoryImpl(
      get<_i4.PostsService>(), get<_i7.UserStorage>()));
  gh.factory<_i12.UserRepository>(() =>
      _i12.UserRepositoryImpl(get<_i6.UserService>(), get<_i7.UserStorage>()));
  gh.factory<_i13.AddCommetUseCase>(
      () => _i13.AddCommetUseCaseImpl(get<_i11.PostsRepository>()));
  gh.factoryParam<_i14.FourBloc, int?, dynamic>((userId, _) =>
      _i14.FourBloc(userId, get<_i10.GetAlbumsByUserIdUseCase>()));
  gh.factory<_i13.GetCommentsByPostIdUseCase>(
      () => _i13.GetCommentsByPostIdUseCaseImpl(get<_i11.PostsRepository>()));
  gh.factory<_i13.GetPostsByIdUseCase>(
      () => _i13.GetPostsByIdImpl(get<_i11.PostsRepository>()));
  gh.factory<_i13.GetPostsByUserIdUseCase>(
      () => _i13.GetPostsByUserIdImpl(get<_i11.PostsRepository>()));
  gh.factory<_i15.GetUserUseCase>(
      () => _i15.GetUserImpl(get<_i12.UserRepository>()));
  gh.factoryParam<_i16.SecondBloc, _i17.UserDto?, dynamic>((user, _) =>
      _i16.SecondBloc(user, get<_i13.GetPostsByUserIdUseCase>(),
          get<_i10.GetAlbumsByUserIdUseCase>(), get<_i5.RouterEventSink>()));
  gh.factoryParam<_i18.ThirdBloc, int?, dynamic>((userId, _) => _i18.ThirdBloc(
      userId, get<_i5.RouterEventSink>(), get<_i13.GetPostsByUserIdUseCase>()));
  gh.factory<_i19.FirstBloc>(() => _i19.FirstBloc(get<_i15.GetUserUseCase>(),
      get<_i5.RouterEventSink>(), get<_i7.UserStorage>()));
  gh.factoryParam<_i20.FiveBloc, int?, dynamic>((postId, _) => _i20.FiveBloc(
      postId,
      get<_i13.GetPostsByIdUseCase>(),
      get<_i13.GetCommentsByPostIdUseCase>(),
      get<_i13.AddCommetUseCase>()));
  return get;
}
