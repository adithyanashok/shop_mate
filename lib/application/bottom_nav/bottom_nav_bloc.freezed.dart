// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) homeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? homeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? homeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEvent value) homeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEvent value)? homeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEvent value)? homeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavEventCopyWith<BottomNavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavEventCopyWith<$Res> {
  factory $BottomNavEventCopyWith(
          BottomNavEvent value, $Res Function(BottomNavEvent) then) =
      _$BottomNavEventCopyWithImpl<$Res, BottomNavEvent>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$BottomNavEventCopyWithImpl<$Res, $Val extends BottomNavEvent>
    implements $BottomNavEventCopyWith<$Res> {
  _$BottomNavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEventCopyWith<$Res>
    implements $BottomNavEventCopyWith<$Res> {
  factory _$$HomeEventCopyWith(
          _$HomeEvent value, $Res Function(_$HomeEvent) then) =
      __$$HomeEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$HomeEventCopyWithImpl<$Res>
    extends _$BottomNavEventCopyWithImpl<$Res, _$HomeEvent>
    implements _$$HomeEventCopyWith<$Res> {
  __$$HomeEventCopyWithImpl(
      _$HomeEvent _value, $Res Function(_$HomeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$HomeEvent(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeEvent implements HomeEvent {
  const _$HomeEvent({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'BottomNavEvent.homeEvent(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventCopyWith<_$HomeEvent> get copyWith =>
      __$$HomeEventCopyWithImpl<_$HomeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) homeEvent,
  }) {
    return homeEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? homeEvent,
  }) {
    return homeEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? homeEvent,
    required TResult orElse(),
  }) {
    if (homeEvent != null) {
      return homeEvent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEvent value) homeEvent,
  }) {
    return homeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEvent value)? homeEvent,
  }) {
    return homeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEvent value)? homeEvent,
    required TResult orElse(),
  }) {
    if (homeEvent != null) {
      return homeEvent(this);
    }
    return orElse();
  }
}

abstract class HomeEvent implements BottomNavEvent {
  const factory HomeEvent({required final int value}) = _$HomeEvent;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$HomeEventCopyWith<_$HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavState {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res, BottomNavState>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res, $Val extends BottomNavState>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavStateCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$$_BottomNavStateCopyWith(
          _$_BottomNavState value, $Res Function(_$_BottomNavState) then) =
      __$$_BottomNavStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_BottomNavStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res, _$_BottomNavState>
    implements _$$_BottomNavStateCopyWith<$Res> {
  __$$_BottomNavStateCopyWithImpl(
      _$_BottomNavState _value, $Res Function(_$_BottomNavState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_BottomNavState(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavState implements _BottomNavState {
  const _$_BottomNavState({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'BottomNavState(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavState &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavStateCopyWith<_$_BottomNavState> get copyWith =>
      __$$_BottomNavStateCopyWithImpl<_$_BottomNavState>(this, _$identity);
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState({required final int value}) = _$_BottomNavState;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavStateCopyWith<_$_BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}
