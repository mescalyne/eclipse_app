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
class _$FiveEventTearOff {
  const _$FiveEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnLoadComments onLoadComments() {
    return const OnLoadComments();
  }

  OnAddComment onAddComment(String name, String email, String comment) {
    return OnAddComment(
      name,
      email,
      comment,
    );
  }
}

/// @nodoc
const $FiveEvent = _$FiveEventTearOff();

/// @nodoc
mixin _$FiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onLoadComments,
    required TResult Function(String name, String email, String comment)
        onAddComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnLoadComments value) onLoadComments,
    required TResult Function(OnAddComment value) onAddComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiveEventCopyWith<$Res> {
  factory $FiveEventCopyWith(FiveEvent value, $Res Function(FiveEvent) then) =
      _$FiveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FiveEventCopyWithImpl<$Res> implements $FiveEventCopyWith<$Res> {
  _$FiveEventCopyWithImpl(this._value, this._then);

  final FiveEvent _value;
  // ignore: unused_field
  final $Res Function(FiveEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$FiveEventCopyWithImpl<$Res>
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
    return 'FiveEvent.onLoad()';
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
    required TResult Function() onLoadComments,
    required TResult Function(String name, String email, String comment)
        onAddComment,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
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
    required TResult Function(OnLoadComments value) onLoadComments,
    required TResult Function(OnAddComment value) onAddComment,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements FiveEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnLoadCommentsCopyWith<$Res> {
  factory $OnLoadCommentsCopyWith(
          OnLoadComments value, $Res Function(OnLoadComments) then) =
      _$OnLoadCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCommentsCopyWithImpl<$Res> extends _$FiveEventCopyWithImpl<$Res>
    implements $OnLoadCommentsCopyWith<$Res> {
  _$OnLoadCommentsCopyWithImpl(
      OnLoadComments _value, $Res Function(OnLoadComments) _then)
      : super(_value, (v) => _then(v as OnLoadComments));

  @override
  OnLoadComments get _value => super._value as OnLoadComments;
}

/// @nodoc

class _$OnLoadComments implements OnLoadComments {
  const _$OnLoadComments();

  @override
  String toString() {
    return 'FiveEvent.onLoadComments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoadComments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onLoadComments,
    required TResult Function(String name, String email, String comment)
        onAddComment,
  }) {
    return onLoadComments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
  }) {
    return onLoadComments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
    required TResult orElse(),
  }) {
    if (onLoadComments != null) {
      return onLoadComments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnLoadComments value) onLoadComments,
    required TResult Function(OnAddComment value) onAddComment,
  }) {
    return onLoadComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
  }) {
    return onLoadComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
    required TResult orElse(),
  }) {
    if (onLoadComments != null) {
      return onLoadComments(this);
    }
    return orElse();
  }
}

abstract class OnLoadComments implements FiveEvent {
  const factory OnLoadComments() = _$OnLoadComments;
}

/// @nodoc
abstract class $OnAddCommentCopyWith<$Res> {
  factory $OnAddCommentCopyWith(
          OnAddComment value, $Res Function(OnAddComment) then) =
      _$OnAddCommentCopyWithImpl<$Res>;
  $Res call({String name, String email, String comment});
}

/// @nodoc
class _$OnAddCommentCopyWithImpl<$Res> extends _$FiveEventCopyWithImpl<$Res>
    implements $OnAddCommentCopyWith<$Res> {
  _$OnAddCommentCopyWithImpl(
      OnAddComment _value, $Res Function(OnAddComment) _then)
      : super(_value, (v) => _then(v as OnAddComment));

  @override
  OnAddComment get _value => super._value as OnAddComment;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? comment = freezed,
  }) {
    return _then(OnAddComment(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnAddComment implements OnAddComment {
  const _$OnAddComment(this.name, this.email, this.comment);

  @override
  final String name;
  @override
  final String email;
  @override
  final String comment;

  @override
  String toString() {
    return 'FiveEvent.onAddComment(name: $name, email: $email, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAddComment &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  $OnAddCommentCopyWith<OnAddComment> get copyWith =>
      _$OnAddCommentCopyWithImpl<OnAddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onLoadComments,
    required TResult Function(String name, String email, String comment)
        onAddComment,
  }) {
    return onAddComment(name, email, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
  }) {
    return onAddComment?.call(name, email, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onLoadComments,
    TResult Function(String name, String email, String comment)? onAddComment,
    required TResult orElse(),
  }) {
    if (onAddComment != null) {
      return onAddComment(name, email, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnLoadComments value) onLoadComments,
    required TResult Function(OnAddComment value) onAddComment,
  }) {
    return onAddComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
  }) {
    return onAddComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnLoadComments value)? onLoadComments,
    TResult Function(OnAddComment value)? onAddComment,
    required TResult orElse(),
  }) {
    if (onAddComment != null) {
      return onAddComment(this);
    }
    return orElse();
  }
}

abstract class OnAddComment implements FiveEvent {
  const factory OnAddComment(String name, String email, String comment) =
      _$OnAddComment;

  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnAddCommentCopyWith<OnAddComment> get copyWith =>
      throw _privateConstructorUsedError;
}
