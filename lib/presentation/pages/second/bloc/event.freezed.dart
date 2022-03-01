// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecondEventTearOff {
  const _$SecondEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnRouteToThird onRouteToThird() {
    return const OnRouteToThird();
  }

  OnRouteToFour onRouteToFour() {
    return const OnRouteToFour();
  }

  OnLoadedPost onLoadedPost(List<PostsDto> posts) {
    return OnLoadedPost(
      posts,
    );
  }

  OnLoadedAlbum onLoadedAlbum(List<AlbumDto> albums) {
    return OnLoadedAlbum(
      albums,
    );
  }
}

/// @nodoc
const $SecondEvent = _$SecondEventTearOff();

/// @nodoc
mixin _$SecondEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondEventCopyWith<$Res> {
  factory $SecondEventCopyWith(
          SecondEvent value, $Res Function(SecondEvent) then) =
      _$SecondEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecondEventCopyWithImpl<$Res> implements $SecondEventCopyWith<$Res> {
  _$SecondEventCopyWithImpl(this._value, this._then);

  final SecondEvent _value;
  // ignore: unused_field
  final $Res Function(SecondEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnLoadCopyWith<$Res> {
  _$OnLoadCopyWithImpl(OnLoad _value, $Res Function(OnLoad) _then)
      : super(_value, (v) => _then(v as OnLoad));

  @override
  OnLoad get _value => super._value as OnLoad;
}

/// @nodoc

class _$OnLoad implements OnLoad {
  const _$OnLoad();

  @override
  String toString() {
    return 'SecondEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements SecondEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnRouteToThirdCopyWith<$Res> {
  factory $OnRouteToThirdCopyWith(
          OnRouteToThird value, $Res Function(OnRouteToThird) then) =
      _$OnRouteToThirdCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToThirdCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnRouteToThirdCopyWith<$Res> {
  _$OnRouteToThirdCopyWithImpl(
      OnRouteToThird _value, $Res Function(OnRouteToThird) _then)
      : super(_value, (v) => _then(v as OnRouteToThird));

  @override
  OnRouteToThird get _value => super._value as OnRouteToThird;
}

/// @nodoc

class _$OnRouteToThird implements OnRouteToThird {
  const _$OnRouteToThird();

  @override
  String toString() {
    return 'SecondEvent.onRouteToThird()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToThird);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) {
    return onRouteToThird();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) {
    return onRouteToThird?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onRouteToThird != null) {
      return onRouteToThird();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) {
    return onRouteToThird(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) {
    return onRouteToThird?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onRouteToThird != null) {
      return onRouteToThird(this);
    }
    return orElse();
  }
}

abstract class OnRouteToThird implements SecondEvent {
  const factory OnRouteToThird() = _$OnRouteToThird;
}

/// @nodoc
abstract class $OnRouteToFourCopyWith<$Res> {
  factory $OnRouteToFourCopyWith(
          OnRouteToFour value, $Res Function(OnRouteToFour) then) =
      _$OnRouteToFourCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToFourCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnRouteToFourCopyWith<$Res> {
  _$OnRouteToFourCopyWithImpl(
      OnRouteToFour _value, $Res Function(OnRouteToFour) _then)
      : super(_value, (v) => _then(v as OnRouteToFour));

  @override
  OnRouteToFour get _value => super._value as OnRouteToFour;
}

/// @nodoc

class _$OnRouteToFour implements OnRouteToFour {
  const _$OnRouteToFour();

  @override
  String toString() {
    return 'SecondEvent.onRouteToFour()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToFour);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) {
    return onRouteToFour();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) {
    return onRouteToFour?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onRouteToFour != null) {
      return onRouteToFour();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) {
    return onRouteToFour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) {
    return onRouteToFour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onRouteToFour != null) {
      return onRouteToFour(this);
    }
    return orElse();
  }
}

abstract class OnRouteToFour implements SecondEvent {
  const factory OnRouteToFour() = _$OnRouteToFour;
}

/// @nodoc
abstract class $OnLoadedPostCopyWith<$Res> {
  factory $OnLoadedPostCopyWith(
          OnLoadedPost value, $Res Function(OnLoadedPost) then) =
      _$OnLoadedPostCopyWithImpl<$Res>;
  $Res call({List<PostsDto> posts});
}

/// @nodoc
class _$OnLoadedPostCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnLoadedPostCopyWith<$Res> {
  _$OnLoadedPostCopyWithImpl(
      OnLoadedPost _value, $Res Function(OnLoadedPost) _then)
      : super(_value, (v) => _then(v as OnLoadedPost));

  @override
  OnLoadedPost get _value => super._value as OnLoadedPost;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(OnLoadedPost(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostsDto>,
    ));
  }
}

/// @nodoc

class _$OnLoadedPost implements OnLoadedPost {
  const _$OnLoadedPost(this.posts);

  @override
  final List<PostsDto> posts;

  @override
  String toString() {
    return 'SecondEvent.onLoadedPost(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLoadedPost &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $OnLoadedPostCopyWith<OnLoadedPost> get copyWith =>
      _$OnLoadedPostCopyWithImpl<OnLoadedPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) {
    return onLoadedPost(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) {
    return onLoadedPost?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoadedPost != null) {
      return onLoadedPost(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) {
    return onLoadedPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) {
    return onLoadedPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoadedPost != null) {
      return onLoadedPost(this);
    }
    return orElse();
  }
}

abstract class OnLoadedPost implements SecondEvent {
  const factory OnLoadedPost(List<PostsDto> posts) = _$OnLoadedPost;

  List<PostsDto> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoadedPostCopyWith<OnLoadedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnLoadedAlbumCopyWith<$Res> {
  factory $OnLoadedAlbumCopyWith(
          OnLoadedAlbum value, $Res Function(OnLoadedAlbum) then) =
      _$OnLoadedAlbumCopyWithImpl<$Res>;
  $Res call({List<AlbumDto> albums});
}

/// @nodoc
class _$OnLoadedAlbumCopyWithImpl<$Res> extends _$SecondEventCopyWithImpl<$Res>
    implements $OnLoadedAlbumCopyWith<$Res> {
  _$OnLoadedAlbumCopyWithImpl(
      OnLoadedAlbum _value, $Res Function(OnLoadedAlbum) _then)
      : super(_value, (v) => _then(v as OnLoadedAlbum));

  @override
  OnLoadedAlbum get _value => super._value as OnLoadedAlbum;

  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(OnLoadedAlbum(
      albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AlbumDto>,
    ));
  }
}

/// @nodoc

class _$OnLoadedAlbum implements OnLoadedAlbum {
  const _$OnLoadedAlbum(this.albums);

  @override
  final List<AlbumDto> albums;

  @override
  String toString() {
    return 'SecondEvent.onLoadedAlbum(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLoadedAlbum &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albums);

  @JsonKey(ignore: true)
  @override
  $OnLoadedAlbumCopyWith<OnLoadedAlbum> get copyWith =>
      _$OnLoadedAlbumCopyWithImpl<OnLoadedAlbum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onRouteToThird,
    required TResult Function() onRouteToFour,
    required TResult Function(List<PostsDto> posts) onLoadedPost,
    required TResult Function(List<AlbumDto> albums) onLoadedAlbum,
  }) {
    return onLoadedAlbum(albums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
  }) {
    return onLoadedAlbum?.call(albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onRouteToThird,
    TResult Function()? onRouteToFour,
    TResult Function(List<PostsDto> posts)? onLoadedPost,
    TResult Function(List<AlbumDto> albums)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoadedAlbum != null) {
      return onLoadedAlbum(albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToThird value) onRouteToThird,
    required TResult Function(OnRouteToFour value) onRouteToFour,
    required TResult Function(OnLoadedPost value) onLoadedPost,
    required TResult Function(OnLoadedAlbum value) onLoadedAlbum,
  }) {
    return onLoadedAlbum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
  }) {
    return onLoadedAlbum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToThird value)? onRouteToThird,
    TResult Function(OnRouteToFour value)? onRouteToFour,
    TResult Function(OnLoadedPost value)? onLoadedPost,
    TResult Function(OnLoadedAlbum value)? onLoadedAlbum,
    required TResult orElse(),
  }) {
    if (onLoadedAlbum != null) {
      return onLoadedAlbum(this);
    }
    return orElse();
  }
}

abstract class OnLoadedAlbum implements SecondEvent {
  const factory OnLoadedAlbum(List<AlbumDto> albums) = _$OnLoadedAlbum;

  List<AlbumDto> get albums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoadedAlbumCopyWith<OnLoadedAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}
