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
class _$ThirdEventTearOff {
  const _$ThirdEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnRouteToFive onRouteToFive(int id) {
    return OnRouteToFive(
      id,
    );
  }
}

/// @nodoc
const $ThirdEvent = _$ThirdEventTearOff();

/// @nodoc
mixin _$ThirdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(int id) onRouteToFive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToFive value) onRouteToFive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdEventCopyWith<$Res> {
  factory $ThirdEventCopyWith(
          ThirdEvent value, $Res Function(ThirdEvent) then) =
      _$ThirdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThirdEventCopyWithImpl<$Res> implements $ThirdEventCopyWith<$Res> {
  _$ThirdEventCopyWithImpl(this._value, this._then);

  final ThirdEvent _value;
  // ignore: unused_field
  final $Res Function(ThirdEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$ThirdEventCopyWithImpl<$Res>
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
    return 'ThirdEvent.onLoad()';
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
    required TResult Function(int id) onRouteToFive,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
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
    required TResult Function(OnRouteToFive value) onRouteToFive,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements ThirdEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnRouteToFiveCopyWith<$Res> {
  factory $OnRouteToFiveCopyWith(
          OnRouteToFive value, $Res Function(OnRouteToFive) then) =
      _$OnRouteToFiveCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$OnRouteToFiveCopyWithImpl<$Res> extends _$ThirdEventCopyWithImpl<$Res>
    implements $OnRouteToFiveCopyWith<$Res> {
  _$OnRouteToFiveCopyWithImpl(
      OnRouteToFive _value, $Res Function(OnRouteToFive) _then)
      : super(_value, (v) => _then(v as OnRouteToFive));

  @override
  OnRouteToFive get _value => super._value as OnRouteToFive;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnRouteToFive(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnRouteToFive implements OnRouteToFive {
  const _$OnRouteToFive(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ThirdEvent.onRouteToFive(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnRouteToFive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnRouteToFiveCopyWith<OnRouteToFive> get copyWith =>
      _$OnRouteToFiveCopyWithImpl<OnRouteToFive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(int id) onRouteToFive,
  }) {
    return onRouteToFive(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
  }) {
    return onRouteToFive?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(int id)? onRouteToFive,
    required TResult orElse(),
  }) {
    if (onRouteToFive != null) {
      return onRouteToFive(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnRouteToFive value) onRouteToFive,
  }) {
    return onRouteToFive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
  }) {
    return onRouteToFive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnRouteToFive value)? onRouteToFive,
    required TResult orElse(),
  }) {
    if (onRouteToFive != null) {
      return onRouteToFive(this);
    }
    return orElse();
  }
}

abstract class OnRouteToFive implements ThirdEvent {
  const factory OnRouteToFive(int id) = _$OnRouteToFive;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRouteToFiveCopyWith<OnRouteToFive> get copyWith =>
      throw _privateConstructorUsedError;
}
