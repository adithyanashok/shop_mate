// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageviewEvent {
  int get currentIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) onPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? onPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? onPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPageChanged value) onPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPageChanged value)? onPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPageChanged value)? onPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageviewEventCopyWith<PageviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageviewEventCopyWith<$Res> {
  factory $PageviewEventCopyWith(
          PageviewEvent value, $Res Function(PageviewEvent) then) =
      _$PageviewEventCopyWithImpl<$Res, PageviewEvent>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$PageviewEventCopyWithImpl<$Res, $Val extends PageviewEvent>
    implements $PageviewEventCopyWith<$Res> {
  _$PageviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnPageChangedCopyWith<$Res>
    implements $PageviewEventCopyWith<$Res> {
  factory _$$_OnPageChangedCopyWith(
          _$_OnPageChanged value, $Res Function(_$_OnPageChanged) then) =
      __$$_OnPageChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_OnPageChangedCopyWithImpl<$Res>
    extends _$PageviewEventCopyWithImpl<$Res, _$_OnPageChanged>
    implements _$$_OnPageChangedCopyWith<$Res> {
  __$$_OnPageChangedCopyWithImpl(
      _$_OnPageChanged _value, $Res Function(_$_OnPageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$_OnPageChanged(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnPageChanged implements _OnPageChanged {
  const _$_OnPageChanged({required this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'PageviewEvent.onPageChanged(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPageChanged &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPageChangedCopyWith<_$_OnPageChanged> get copyWith =>
      __$$_OnPageChangedCopyWithImpl<_$_OnPageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) onPageChanged,
  }) {
    return onPageChanged(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? onPageChanged,
  }) {
    return onPageChanged?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? onPageChanged,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPageChanged value) onPageChanged,
  }) {
    return onPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnPageChanged value)? onPageChanged,
  }) {
    return onPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPageChanged value)? onPageChanged,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPageChanged implements PageviewEvent {
  const factory _OnPageChanged({required final int currentIndex}) =
      _$_OnPageChanged;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_OnPageChangedCopyWith<_$_OnPageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageviewState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageviewStateCopyWith<PageviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageviewStateCopyWith<$Res> {
  factory $PageviewStateCopyWith(
          PageviewState value, $Res Function(PageviewState) then) =
      _$PageviewStateCopyWithImpl<$Res, PageviewState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$PageviewStateCopyWithImpl<$Res, $Val extends PageviewState>
    implements $PageviewStateCopyWith<$Res> {
  _$PageviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageviewStateCopyWith<$Res>
    implements $PageviewStateCopyWith<$Res> {
  factory _$$_PageviewStateCopyWith(
          _$_PageviewState value, $Res Function(_$_PageviewState) then) =
      __$$_PageviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_PageviewStateCopyWithImpl<$Res>
    extends _$PageviewStateCopyWithImpl<$Res, _$_PageviewState>
    implements _$$_PageviewStateCopyWith<$Res> {
  __$$_PageviewStateCopyWithImpl(
      _$_PageviewState _value, $Res Function(_$_PageviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$_PageviewState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageviewState implements _PageviewState {
  const _$_PageviewState({required this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'PageviewState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageviewState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageviewStateCopyWith<_$_PageviewState> get copyWith =>
      __$$_PageviewStateCopyWithImpl<_$_PageviewState>(this, _$identity);
}

abstract class _PageviewState implements PageviewState {
  const factory _PageviewState({required final int currentIndex}) =
      _$_PageviewState;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_PageviewStateCopyWith<_$_PageviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
